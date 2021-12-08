CREATE TABLE CustomerInfo (
	Id INT PRIMARY KEY,
	YearOfBirth INT,
	Education VARCHAR(20),
	MaritalStatus VARCHAR(20),
	Income MONEY,
	ChildrenInHome INT,
	TeensInHome INT,
	EnrollmentDate DATE,
	DaysSinceLastPurchase INT
);

CREATE TABLE ProductsPurchased (
	CustomerId INT NOT NULL,
	Wine INT,
	Fruit INT,
	Meat INT,
	Fish INT,
	Sweets INT,
	Gold INT
);

CREATE TABLE Promotions (
	CustomerId INT NOT NULL,
	PurchasesWithDeals INT,
	AcceptedCampaign1 BIT,
	AcceptedCampaign2 BIT,
	AcceptedCampaign3 BIT,
	AcceptedCampaign4 BIT,
	AcceptedCampaign5 BIT,
	AcceptedLatestCampaign BIT,
	FOREIGN KEY (CustomerID) references CustomerInfo(Id),
);

CREATE TABLE PurchaseLocation (
	CustomerId INT NOT NULL,
	WebPurchases INT,
	CatalogPurchases INT,
	StorePurchases INT,
	WebVisits INT,
	FOREIGN KEY (CustomerID) references CustomerInfo(Id),
);