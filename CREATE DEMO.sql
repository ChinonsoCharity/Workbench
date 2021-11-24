create schema demo;
use demo;

create table Human(
	humanId	int(10)		Not Null,
    name	varchar(30)	Not Null,
    age		int(30)		Not Null,
    gender	varchar(1)	Not Null,
    bloodType	varchar(3)	Not Null,
    Genotype	varchar(3)	Null,
    -- define the primary key column--
    constraint	human_PK	Primary key(humanId)
    );
    
    
   --  Game table
   create table Games(
		gameId	int(3)	Not Null,
		Gamename	varchar(30)	Not	Null,
        price	numeric(4,2)	Not	Null,
        quantity	int(3)	Not	Null,
        Location	varchar(25)		Not NULL,
        constraint Game_PK primary key(gameId)
        );
        
      --   Game purchase table -- 
      create table GamePurchase(
      humanId int(10) Not NUll,
      gameId	int(3)	Not	Null,
     --  Surrogate column
     orderDate	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     constraint	order_PK primary key(humanId,gameId),
     constraint human_FK foreign key(humanId)
						 references	 Human(humanId),
	constraint	games_FK	foreign key(gameId)
							references	Games(gameId)
);
     
     