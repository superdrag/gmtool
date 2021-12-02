
do
local function New(a0,a1,a2,a3,a4,a5,a6)
	return {id=a0,cn=a1,en=a2,tc=a3,jp=a4,kr=a5,flag=a6,}
end
local WordBookConfig = 
{
["book_10001"] = New("book_10001","未获得","Not obtained","未獲得","取得されていません","미 획득","wordbookconfig"),
["book_10002"] = New("book_10002","排序方式","Sort order","排序方式","ソート方法","정렬 방식","wordbookconfig"),
["book_10003"] = New("book_10003","招募队员","Recruit players","招募隊員","隊員を募集する","대원 을 모집 하 다","wordbookconfig"),
}
TableMerge(WordConfig,WordBookConfig)
end