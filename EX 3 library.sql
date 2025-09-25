CREATE TABLE Publisher(
    namePublisher VARCHAR(100) PRIMARY KEY,
    addressL VARCHAR(100),
    phone VARCHAR(100)
);

CREATE TABLE Book(
    bookId INT PRIMARY KEY,
    title VARCHAR(100),
    namePublisher INT,
    FOREIGN KEY (namePublisher) REFERENCES Publisher(namePublisher)
);

CREATE TABLE AuthorName(
    authorNameId INT PRIMARY KEY,
    fName VARCHAR(100),
    lName VARCHAR(100),
    bookId INT,
    FOREIGN KEY (bookId) REFERENCES Book(bookId)
);

CREATE TABLE Library_Branch(
    BranchId INT PRIMARY KEY,
    BranchName VARCHAR(100),
    addressB VARCHAR(100)
);

CREATE TABLE Borrower(
    cardNo INT PRIMARY KEY,
    nameB VARCHAR(100),
    addressB VARCHAR(100),
    phone VARCHAR(100)
);

CREATE TABLE Book_Copies(
    branchId INT,
    bookId INT,
    NoOfCopies INT,
    PRIMARY KEY (branchId, bookId),
    FOREIGN KEY (branchId) REFERENCES Library_Branch(BranchId),
    FOREIGN KEY (bookId) REFERENCES Book(bookId)
);

CREATE TABLE Book_Loans(
    cardNo INT,
    bookId INT,
    dateOut TIMESTAMP,
    dueDate TIMESTAMP,
    PRIMARY KEY (cardNo, bookId),
    FOREIGN KEY (cardNo) REFERENCES Borrower(cardNo),
    FOREIGN KEY (bookId) REFERENCES Book(bookId)
);
