#include "PermutationCipher.h"

PermutationCipher::PermutationCipher(int k)
{
    this->key=k;
}

wstring PermutationCipher::EncodePermutationCipher(PermutationCipher key, wstring& data)
{
    wstring result;
    const int stroki = ((data.size()-1)/key.key)+1; 
    int index = 0; // для строки
    wchar_t matr[stroki][key.key];
    for (auto i = 0; i <stroki; i++) {
        for (auto j = 0; j < key.key; j++ ) {
            if (index < data.size()) {
                matr[i][j] = data[index]; 
                index++;
            } else {
                matr[i][j] =' ';
            }
        }
    }
    result.resize(stroki*key.key); 
    for (auto i = 0; i < key.key; i++) {
        for (auto j = 0; j < stroki; j++ ) {
            result.push_back(matr[j][i]);
        }
    }
    return result;
}

wstring PermutationCipher::DecodePermutationCipher(PermutationCipher key, wstring &data)
{
    wstring result;
    int index = 0; // для строки
    const int stroki = ((data.size()-1)/key.key)+1; 
    wchar_t matr[stroki][key.key];

    for (auto i = 0; i < key.key; i++) {
        for (auto j = 0; j < stroki; j++ ) {
            if (index < data.size()) {
                matr[j][i] = data[index];
                index++;
            } else {
                matr[j][i] = ' ';
                index++;
            }
        }
    }
    result.resize(stroki*key.key); 
    for(auto i = 0; i < stroki; i++) {
        for (auto j = 0; j< key.key; j++) {
            result.push_back(matr[i][j]);
        }
    }
    return result;
}