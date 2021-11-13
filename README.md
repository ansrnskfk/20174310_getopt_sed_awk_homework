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

`f) cat fruit.txt` `a) cat animal.txt` `h) help`  // fruit.txt, animal.txt 파일 내용 보여주기, help함수 호출.

`\?) echo "invalid option. try to -h option"` // 설정한 옵션 외 다른 옵션을 입력받으면 이 내용을 출력.

---

2) **sed**
