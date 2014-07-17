function today_prompt
  switch (date +%m)
    case "01"
      printf ㋀
    case "02"
      printf ㋁
    case "03"
      printf ㋂
    case "04"
      printf ㋃
    case "05"
      printf ㋄
    case "06"
      printf ㋅
    case "07"
      printf ㋆
    case "08"
      printf ㋇
    case "09"
      printf ㋈
    case "10"
      printf ㋉
    case "11"
      printf ㋊
    case "12"
      printf ㋋
    case "*"
  end

  switch (date +%d)
    case "01"
      printf ㏠
    case "02"
      printf ㏡
    case "03"
      printf ㏢
    case "04"
      printf ㏣
    case "05"
      printf ㏤
    case "06"
      printf ㏥
    case "07"
      printf ㏦
    case "08"
      printf ㏧
    case "09"
      printf ㏨
    case "10"
      printf ㏩
    case "11"
      printf ㏪
    case "12"
      printf ㏫
    case "13"
      printf ㏬
    case "14"
      printf ㏭
    case "15"
      printf ㏮
    case "16"
      printf ㏯
    case "17"
      printf ㏰
    case "18"
      printf ㏱
    case "19"
      printf ㏲
    case "20"
      printf ㏳
    case "21"
      printf ㏴
    case "22"
      printf ㏵
    case "23"
      printf ㏶
    case "24"
      printf ㏷
    case "25"
      printf ㏸
    case "26"
      printf ㏹
    case "27"
      printf ㏺
    case "28"
      printf ㏻
    case "29"
      printf ㏼
    case "30"
      printf ㏽
    case "31"
      printf ㏾
    case "*"
  end

  printf "$argv"
end