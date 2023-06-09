.class public Lcom/ecommerce/furniture/helpers/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final COLUMN_USER_CONTACT:Ljava/lang/String; = "user_contact"

.field private static final COLUMN_USER_EMAIL:Ljava/lang/String; = "user_email"

.field private static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field private static final COLUMN_USER_NAME:Ljava/lang/String; = "user_name"

.field private static final COLUMN_USER_PASSWORD:Ljava/lang/String; = "user_password"

.field private static final DATABASE_NAME:Ljava/lang/String; = "UserManager.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_USER:Ljava/lang/String; = "user"


# instance fields
.field private CREATE_USER_TABLE:Ljava/lang/String;

.field private DROP_USER_TABLE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v0, "UserManager.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    const-string v0, "CREATE TABLE user(user_id INTEGER PRIMARY KEY AUTOINCREMENT,user_name TEXT,user_email TEXT,user_password TEXT,user_contact TEXT )"

    iput-object v0, p0, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->CREATE_USER_TABLE:Ljava/lang/String;

    .line 45
    const-string v0, "DROP TABLE IF EXISTS user"

    iput-object v0, p0, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->DROP_USER_TABLE:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public addUser(Lcom/ecommerce/furniture/helpers/User;)V
    .registers 6
    .param p1, "user"    # Lcom/ecommerce/furniture/helpers/User;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_name"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "user_email"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "user_password"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "user_contact"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getStudent_class()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "user"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    return-void
.end method

.method public checkUser(Ljava/lang/String;)Z
    .registers 14
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 239
    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v2, v11

    .line 242
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 245
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "user_email = ?"

    .line 248
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 256
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "user"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 264
    .local v9, "cursorCount":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 267
    if-lez v9, :cond_29

    move v1, v10

    .line 271
    :goto_28
    return v1

    :cond_29
    move v1, v11

    goto :goto_28
.end method

.method public checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 323
    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v2, v11

    .line 326
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 328
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "user_email = ? AND user_password = ?"

    .line 332
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v11

    aput-object p2, v4, v10

    .line 340
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v1, "user"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 348
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 350
    .local v9, "cursorCount":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 351
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 352
    if-lez v9, :cond_2c

    move v1, v10

    .line 356
    :goto_2b
    return v1

    :cond_2c
    move v1, v11

    goto :goto_2b
.end method

.method public deleteUser(Lcom/ecommerce/furniture/helpers/User;)V
    .registers 8
    .param p1, "user"    # Lcom/ecommerce/furniture/helpers/User;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "user"

    const-string v2, "user_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->CREATE_USER_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->DROP_USER_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method

.method public updateUser(Lcom/ecommerce/furniture/helpers/User;)V
    .registers 9
    .param p1, "user"    # Lcom/ecommerce/furniture/helpers/User;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/ecommerce/furniture/helpers/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 166
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_name"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "user_email"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "user_password"

    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "user"

    const-string v3, "user_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/ecommerce/furniture/helpers/User;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 172
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    return-void
.end method
