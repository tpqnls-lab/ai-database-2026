DROP TABLE IF EXISTS products;

CREATE TABLE products (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price INT NOT NULL,
stock INT DEFAULT 0,
category VARCHAR(50),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);




INSERT INTO products (name, price, stock, category)
VALUES
('키보드', 30000, 10, '컴퓨터주변기기'),
('마우스', 15000, 20, '컴퓨터주변기기'),
('모니터', 250000, 5, '디스플레이'),
('USB 메모리', 12000, 30, '저장장치'),
('노트북 거치대', 22000, 8, '액세서리'),
('웹캠', 45000, 12, '컴퓨터주변기기'),
('외장하드', 89000, 7, '저장장치'),
('노트북 파우치', 18000, 15, '액세서리'),
('HDMI 케이블', 9000, 40, '케이블'),
('무선 이어폰', 79000, 6, '음향기기');

-- 전체 상품을 조회
select * from  products;

-- 상품명과 가격만 조정
select products.name, products.price from products;

-- 가격이 20000원 이상인 상품 조회
select * from products p 
where p.price  > 20000;

-- 재고가 10개 이하인 상품 조회
select * from products p 
where p.stock  <= 10;

--가격이 높은 순서대로 정렬
select * from products p 
order by price desc;

-- 가장 비싼 상품 2개 조회
select * from products p 
order by price desc
limit 2;

--마우스의 가격을 18000원으로 수정
update products set 
 price = 18000
where name = '마우스';

-- USB 메모리 재고 25개로 수정
update products p set 
stock = 25
where name = 'USB 메모리';

-- 노트북거치대 데이터 삭제
delete from products
where name = '노트북 거치대';

-- 전체 상품 조회
select  * from products;

-- id 오름차순 정렬
select * from products p 
order by id asc;



