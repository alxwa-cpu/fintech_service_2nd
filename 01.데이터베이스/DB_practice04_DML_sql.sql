use korea_stock_info;
show tables;
select * from stock_company_info;
select * from 2024_08_stock_price_info;
use korea_exchange_rate;
select * from exchange_rate where date >= '2020-01-01' and date <= '2020-12-31'; 
select * from exchange_rate where date >= '2020-01-01' and date <= '2020-12-31'
and 통화='유로 EUR'; 
select 통화, min(현찰_살때_환율) 최저가, max(현찰_살때_환율) 최고가 , avg(현찰_살때_환율) 평균가 from exchange_rate where date >= '2020-01-01' and date <= '2020-12-31'
group by 통화;
select 통화, min(현찰_살때_환율) 최저가, max(현찰_살때_환율) 최고가 , round(avg(현찰_살때_환율),2) 평균가 from exchange_rate where date >= '2020-01-01' and date <= '2020-12-31'
group by 통화; 
USE korea_stock_info;
show tables;
create table stock_2025_all as
select*from 2024_08_stock_price_info
union all
select*from 2024_07_stock_price_info;
######################################################################################
SQL 함수
SELECT 함수(값) 예시 MIN() MAX()
SELECT ABS(-34);
SELECT LENGTH("MY SQL")
SELECT ROUND(3.14567, 2);
SELECT ceil(4.1);
 내림 FLOOR(4.9)
select 7/2;
select 7*2;
select 7%2;
select 7 div 2;
select 7 mod 2;
#파워는 제곰, sqrt(루트), sign(음수양수)
#truntcate(값, 자리수) 버림
select truncate(2.2345, 3)
select char_length('홍 길동'), length('홍 길동');
select lower('ABcd');
select upper('efgh');
select ipad(값, 자릿수, 채울문자), rpad(값, 자릿수, 채울문자),
트림함수는 문자열 안은 건드리지 못한다.
select left('this is my sql', 4);
select substr('dahlkg  hdlsakg', 5, 3);
select substr('dahlkg  hdlsakg', 5 );
select trim(leading '삭제할 문자' from, 전체문자열)
select curdate();
select curtime();
select now();
select current_timestamp();
select dayofweek("2024-5-5");
select weekofyear("2025-12-25")