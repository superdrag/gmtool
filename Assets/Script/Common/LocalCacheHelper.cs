using System;
using UnityEngine;
using System.Collections.Generic;
using LitJson;
namespace Utils
{
    public class LocalCacheHelper
    {
        private static Dictionary<string, object> cacheMapping = new Dictionary<string, object>();
        
        private static string userId="";
        private static List<string> UnAddIdList = new List<string>() { "RecordAccount", "UserAccount", "apkVersion", "configVersion", "uiVersion" };
        public static void SetUserId(string userId)
        {
            LocalCacheHelper.userId = userId;
        }
        // 添加本地缓存   
        public static void AddCache<T>(string keyWord,T value)
        {
            if (PlayerPrefs.HasKey(keyWord))
            {
                Logger.Log("该缓存已存在，将对其进行修改{0}", keyWord);
            }
            SetValue<T>(keyWord, value);
        }


        //修改本地缓存
        public static void ModifyCache<T>(string keyWord, T value)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            if (PlayerPrefs.HasKey(keyWord))
            {
                SetValue<T>(keyWord, value,false);
            }
            else
                Logger.Error("关键字不存在！{0}", keyWord);
        }

        private static void SetValue<T>(string keyWord, T value,bool check=true)
        {
            if (!UnAddIdList.Contains(keyWord)&&check)
            {
                keyWord = userId + keyWord;
            }
                if (value.GetType() == typeof(int))
                {
                    PlayerPrefs.SetInt(keyWord, System.Convert.ToInt32(value));
                    cacheMapping[keyWord] = value;
                }
                else if (value.GetType() == typeof(float))
                {
                    PlayerPrefs.SetFloat(keyWord, (float)System.Convert.ToDouble(value));
                    cacheMapping[keyWord] = value;
                }
                else if (value.GetType() == typeof(string))
                {
                    PlayerPrefs.SetString(keyWord, System.Convert.ToString(value));
                    cacheMapping[keyWord] = value;
                }
                else
                {
                    string jsonData = JsonMapper.ToJson(value);
                    PlayerPrefs.SetString(keyWord, jsonData);
                    cacheMapping[keyWord] = jsonData;
                }
        }

        //获取本地缓存
        public static int GetCacheToInt(string keyWord)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            if (cacheMapping.ContainsKey(keyWord))
                return (int)cacheMapping[keyWord];
            else if (PlayerPrefs.HasKey(keyWord))
            {
                cacheMapping.Add(keyWord, PlayerPrefs.GetInt(keyWord));
                return PlayerPrefs.GetInt(keyWord);           
            }
            else
            {
                Logger.Error("关键字不存在!{0}", keyWord);
                return default(int);
            }
        }
        public static float GetCacheToFloat(string keyWord)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            if (cacheMapping.ContainsKey(keyWord))
                return (float)cacheMapping[keyWord];
            else if (PlayerPrefs.HasKey(keyWord))
            {
                cacheMapping.Add(keyWord, PlayerPrefs.GetFloat(keyWord));
                return PlayerPrefs.GetFloat(keyWord);
            }
            else
            {
                Logger.Error("关键字不存在!{0}", keyWord);
                return default(float);
            }
        }
        public static string GetCacheToString(string keyWord)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            if (cacheMapping.ContainsKey(keyWord))
                return (string)cacheMapping[keyWord];
            else if (PlayerPrefs.HasKey(keyWord))
            {
                cacheMapping.Add(keyWord, PlayerPrefs.GetString(keyWord));
                return PlayerPrefs.GetString(keyWord);
            }
            else
            {
                Logger.Error("关键字不存在!{0}", keyWord);
                return default(string);
            }
        }

        public static T GetCacheToClass<T>(string keyWord)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            if (cacheMapping.ContainsKey(keyWord))
            {
                return JsonMapper.ToObject<T>((string)cacheMapping[keyWord]);
            }
            else if (PlayerPrefs.HasKey(keyWord))
            {
                cacheMapping.Add(keyWord, PlayerPrefs.GetString(keyWord));
                return JsonMapper.ToObject<T>((string)cacheMapping[keyWord]);
            }
            else
            {
                Logger.Error("关键字不存在!{0}", keyWord);
                return default(T);
            }
        }

        //清除指定缓存
        public static void DeleteCache(string keyWord)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            if (PlayerPrefs.HasKey(keyWord))
            {
                PlayerPrefs.DeleteKey(keyWord);
            }
            else
                Logger.Error("关键字不存在！{0}",keyWord);
            if (cacheMapping.ContainsKey(keyWord))
                cacheMapping.Remove(keyWord);
        }

        //清空所有缓存
        public static void DeleteAllCache()
        {
            PlayerPrefs.DeleteAll();
            cacheMapping.Clear();
        }

        //缓存是否已存在
        public static bool HasCache(string keyWord)
        {
            if (!UnAddIdList.Contains(keyWord))
            {
                keyWord = userId + keyWord;
            }
            return PlayerPrefs.HasKey(keyWord) ? true : false;
        }
    }
}
