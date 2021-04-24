#include "PermutationCipher.h"
#include <locale>
#include <codecvt>
int main()
{
    bool isTrue = true;
    string mode,newMod,str;
    cout << "Эта программа реализует шифр табличной маршрутной перестановки." << endl;
    cout << "Чтобы завершить программу, введите \"exit\"." << endl;
    do {
        locale loc("ru_RU.UTF-8");
        locale::global(loc);
        cout << "Укажите режим работы:";
        cin >> mode;
        if ((mode == "Decode") or (mode == "Encode")){
            cout << "Введите строку для шифрования:";
            cin.get();
            getline(cin, str);
            int key;
            cout << "Введите ключ:";
            cin >> key;
            
            if (mode == "Encode") {
                PermutationCipher encode(key);
                wstring_convert<codecvt_utf8<wchar_t>, wchar_t> codec;
                wstring wstren = codec.from_bytes(str);
                cout<<codec.to_bytes(encode.EncodePermutationCipher(encode,wstren))<<endl;
            }
            if (mode == "Decode") {
                PermutationCipher decode(key);
                wstring_convert<codecvt_utf8<wchar_t>, wchar_t> codec;
                wstring wstrdec = codec.from_bytes(str);
                cout<<codec.to_bytes(decode.DecodePermutationCipher(decode,wstrdec))<<endl;
            }
        }
        if (mode == "exit") {
            cout << "Программа завершила работу." << endl;
            isTrue = false;
            break;
        }
        if (mode != "Encode" && mode != "Decode" && mode != "exit") {
            cout << "Чтобы воспользоваться справкой, введите \"help\"." << endl;
            cout << "Bведите любую текстовую последовательность символов, чтобы продолжить.\n";
            cin >> newMod;
            if (newMod == "help") {
                cout<<"Справка о работе программы:\n"
                  " Encode - режим шифрования шифром табличной маршрутной перестановки.\n"
                  " Decode - режим расшифрования шифра табличной маршрутной перестановки.\n"
                  " exit - завершить работу программы.\n";
            }

        }

    } while (isTrue != false);
    return 0;
}