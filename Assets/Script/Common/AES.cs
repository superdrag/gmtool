using System;

using System.Collections.Generic;

using System.IO;

using System.Security.Cryptography;

using System.Text;


  public class AES
    {
        /// <summary>
        /// 获取密钥 必须是32字节
        /// </summary>
        private static string Key
        {
            get { return @"asdfwetyhjuytrfd"; }
			//get { return @"asdfwetyhjuytrfd"; }
        }

        private const string saltString = "asdfwetyhjuytrfd";
        private const string pWDString = "home@Wolfy";

        /// <summary>
        /// AES加密
        /// </summary>
        /// <param name="plainStr">明文字符串</param>
        /// <returns>密文</returns>
        public static string AESEncrypt(string encryptStr)
        {
            byte[] keyArray = UTF8Encoding.UTF8.GetBytes(Key);
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(encryptStr);
            RijndaelManaged rDel = new RijndaelManaged();
            rDel.Key = keyArray;
            rDel.Mode = CipherMode.ECB;
            rDel.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = rDel.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }
        public static string AESDEncrypt(string encryptStr)
        {
            byte[] keyArray = UTF8Encoding.UTF8.GetBytes(Key);
            byte[] toEncryptArray = Convert.FromBase64String(encryptStr);
            RijndaelManaged rDel = new RijndaelManaged();
            rDel.Key = keyArray;
            rDel.Mode = CipherMode.ECB;
            rDel.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = rDel.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            return UTF8Encoding.UTF8.GetString(resultArray);
        }

        private const string Iv = "abcdefghijklmnop";

        public static string Encrypt2(string str, string key)
        {
            Byte[] keyArray = System.Text.Encoding.UTF8.GetBytes(key);
            Byte[] toEncryptArray = System.Text.Encoding.UTF8.GetBytes(str);
            var rijndael = new System.Security.Cryptography.RijndaelManaged();
            rijndael.Key = keyArray;
            rijndael.Mode = System.Security.Cryptography.CipherMode.ECB;
            rijndael.Padding = System.Security.Cryptography.PaddingMode.PKCS7;
            rijndael.IV = System.Text.Encoding.UTF8.GetBytes(Iv);
            System.Security.Cryptography.ICryptoTransform cTransform = rijndael.CreateEncryptor();
            Byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }

    
    }