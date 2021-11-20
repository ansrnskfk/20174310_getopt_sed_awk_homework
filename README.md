## 20174310_getopt_sed_awk_homework

> This is 오픈소스SW개론's first report
>> I did some research on getopt, sed and awk.

---

1) **getopt, getopts**

* **write help funtion**
```shell
help()
{
echo "<options>"
	echo "	-h	도움말"
	echo "	-p ARG	받은 인자를 출력해주는  opt"
	echo "	-f	fruit.txt를 보여주는 opt"
	echo "	-a	animal.txt.를 보여주는 opt"
}
```

* **getopt**
  * 사용자로부터 인자를 입력받아 그에 해당하는 명령어 실행 
```shell
while getopts "p:fah" opt
do
	case $opt in
	p) echo "argument: ${OPTARG}"
	;;
	f) cat fruit.txt
	;;
	a) cat animal.txt
	;;
	h) help
	;;
	\?) echo "invalid option. try to -h option"
	;;
	esac
done
```
`while getopts "p:fah" opt` // 인자를 받는 p옵션은 뒤에 :가 붙고 인자를 받지 않는 f,a,h 옵션은 그대로 적는다.

`p) echo "argument: ${OPTARG}"` // 입력받은 인자는 $OPTARG에 저장되고, 이를 출력하는것.

`f) cat fruit.txt` `a) cat animal.txt` `h) help` // fruit.txt, animal.txt 파일 내용 보여주기, help함수 호출.

`\?) echo "invalid option. try to -h option"` // 설정한 옵션 외 다른 옵션을 입력받으면 이 내용을 출력.

---

2) **sed**
* **파일 안의 내용중 원하는 내용만 추출하는 명령어**
	* d: 삭제, p: 출력, s: 치환, i: 삽입

`sed '/pear/d' fruit.txt` // 'pear' 단어가 있는 줄을 삭제하고 출력

`sed -e '1d' fruit.txt` // 첫번째 줄을 삭제하고 출력

`sed -n '1p' fruit.txt` // 첫번째 줄을 출력

`sed 's/apple/jobs/' fruit.txt` // apple을 jobs로 치환 후 출력

`sed -i "2i cherry" fruit.txt` // 1번째 줄과 2번째 줄 사이에 cherry 단어 삽입

`sed -i 3ranimal.txt fruit.txt` // 3번째 줄에 animal.txt의 내용을 삽입

<img src="https://user-images.githubusercontent.com/38202602/142717427-c77aaa37-839a-4b33-b82c-af6ce9552f44.JPG" width="50%" height="50%"/>


3) **awk**
* **파일에서 특정 조건에 맞는 행 또는 열을 출력하는 명령어**

*student.txt*

|name|grade|P/F|
|:---:|:---:|:---:|
|Kim|4|P|
|Park|4|P|
|Lee|3|P|
|Choi|3|F|
|Jung|2|F|
|Hong|2|P|


`awk '{print $1,$3}' student.txt` // 1,3열 출력

|name|P/F|
|:---:|:---:|
|Kim|P|
|Park|P|
|Lee|P|
|Choi|F|
|Jung|F|
|Hong|P|

`awk '/P/' student.txt` // 'P'가 포함된 행 출력

|name|grade|P/F|
|:---:|:---:|:---:|
|Kim|4|P|
|Park|4|P|
|Lee|3|P|
|Hong|2|P|

`awk '{if ($2 > 2 && $3 == "P") print ($0)}' student.txt` // 2열의 값이 2 이상이고, 3열의 값이 'P'인 행 출력

|Kim|4|P|
|:---:|:---:|:---:|
|Park|4|P|
|Lee|3|P|
