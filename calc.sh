#!/bin/bash
function parser()
{
	case $1 in
	[Нн][Оо][Лл][ЬьЪъ])return 0;;
	[ОоАа][ДдТт][Ии][Нн])return 1;;
	[ДдТт][Вв][Аа])return 2;;
	[Тт][Рр][Ии])return 3;;
	[Чч][ЕеИи][Тт][ЫыИи][Рр][ЕеИи])return 4;;
	[Пп][Яя][Тт][ЬьЪъ])return 5;;
	[Шш][ЕеИи][Сс][Тт][ЬьЪъ])return 6;;
	[Сс][ЕеИи][Мм][ЬьЪъ])return 7;;
	[Вв][ОоАа][Сс][ЕеИи][Мм][ЬьЪъ])return 8;;
	[Дд][Ее][Вв][Яя][Тт][ЬьЪъ])return 9;;
	[Пп][Лл][ЮюУу][Сс])echo '+';;
	[Мм][ИиЕе][Нн][УуЮю][Сс])echo '-';;
	[Уу][МмНн][НнМм][Оо][Жж][ИиЕе][Тт][ЬьЪъ])echo '*';;
	[Дд][ЕеИи][Лл][Ии][Тт][ЬьЪъ])echo '/';;
	*)return 99;; #fix
	esac
	return 0
}

echo -e "let's start\n"
while true
do
	echo -en "введите первое число\n>"
	read first
	parser $first
	first=$?
	echo -en "введите второе число\n>"
	read second
	parser $second
	second=$?
	echo -en "введите операцию\n>"
	read op
	op=`parser $op`
	echo -n "результат:"
	expr $first "$op" $second
done
