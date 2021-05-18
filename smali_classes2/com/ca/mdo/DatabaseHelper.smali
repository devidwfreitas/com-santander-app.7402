.class Lcom/ca/mdo/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "CAMDODataModel.db"

.field public static final DATABASE_PATH:Ljava/lang/String;

.field public static final DATABASE_VERSION:I = 0x4

.field public static final DB_EVENTS_TABLE:Ljava/lang/String; = "SESSION_DATA"

.field private static final DB_META_DATA_TABLE:Ljava/lang/String; = "SESSION_META_DATA"

.field public static final DB_TABLE_FIELD_NAMES:[Ljava/lang/String;

.field private static dbPath:Ljava/lang/String;

.field private static mOpenHelper:Lcom/ca/mdo/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CAMDODataModel.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/DatabaseHelper;->DATABASE_PATH:Ljava/lang/String;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "session_json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "session_json_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ca/mdo/DatabaseHelper;->DB_TABLE_FIELD_NAMES:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/mdo/DatabaseHelper;->dbPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "CAMDODataModel.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method public static getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/ca/mdo/DatabaseHelper;->mOpenHelper:Lcom/ca/mdo/DatabaseHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ca/mdo/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/ca/mdo/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ca/mdo/DatabaseHelper;->mOpenHelper:Lcom/ca/mdo/DatabaseHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/ca/mdo/DatabaseHelper;->mOpenHelper:Lcom/ca/mdo/DatabaseHelper;

    return-object v0
.end method

.method private getPlaceHolders(I)Ljava/lang/String;
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 315
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "placeHoldersBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 318
    const-string v3, "?,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "placeHolders":Ljava/lang/String;
    const-string v3, ",$"

    const-string v4, ")"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    return-object v1
.end method

.method private updateSessionMetadata(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "json_session_id"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 359
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SESSION_META_DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 360
    .local v1, "result":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to update session metadata:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 364
    return-void
.end method


# virtual methods
.method public clearDatabase(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v1, Lcom/ca/mdo/DatabaseHelper;->mOpenHelper:Lcom/ca/mdo/DatabaseHelper;

    invoke-virtual {v1}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SESSION_DATA"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 49
    return-void
.end method

.method protected getAllSessionMetadata()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ca/mdo/SessionMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v11, 0x0

    .line 327
    .local v11, "metaData":Lcom/ca/mdo/SessionMetaData;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SESSION_META_DATA"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "session_status"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "session_state"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "header_json"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "row_id ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 338
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    new-instance v11, Lcom/ca/mdo/SessionMetaData;

    .end local v11    # "metaData":Lcom/ca/mdo/SessionMetaData;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v1, v2, v3, v4}, Lcom/ca/mdo/SessionMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    .restart local v11    # "metaData":Lcom/ca/mdo/SessionMetaData;
    invoke-virtual {v11}, Lcom/ca/mdo/SessionMetaData;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 342
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 343
    return-object v10
.end method

.method protected getEventsData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 222
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 224
    .local v3, "singleJsonObject":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 225
    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "evt"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/ca/mdo/DatabaseHelper;->getJsonData([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 226
    .local v1, "eventArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 227
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "prf"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/ca/mdo/DatabaseHelper;->getJsonData([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 228
    .local v2, "perfArray":Lorg/json/JSONArray;
    const-string v5, "hdr"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v5, "evt"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v5, "prf"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "eventArray":Lorg/json/JSONArray;
    .end local v2    # "perfArray":Lorg/json/JSONArray;
    .end local v3    # "singleJsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .restart local v1    # "eventArray":Lorg/json/JSONArray;
    .restart local v3    # "singleJsonObject":Lorg/json/JSONObject;
    :cond_1
    move-object v3, v4

    .line 233
    goto :goto_0

    .line 236
    .end local v1    # "eventArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 238
    goto :goto_0
.end method

.method protected getJsonData([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12
    .param p1, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 198
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 199
    .local v10, "jsonArray":Lorg/json/JSONArray;
    const-string v1, "SESSION_DATA"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "row_id"

    aput-object v4, v2, v3

    const-string v3, "session_json"

    aput-object v3, v2, v11

    const-string v3, "session_id=? and session_json_type in (?)"

    const-string v7, "row_id ASC"

    move-object v4, p1

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 208
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 213
    return-object v10
.end method

.method public getMDODBPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    sget-object v1, Lcom/ca/mdo/DatabaseHelper;->dbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 412
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/DatabaseHelper;->dbPath:Ljava/lang/String;

    .line 414
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    sget-object v1, Lcom/ca/mdo/DatabaseHelper;->dbPath:Ljava/lang/String;

    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS SESSION_DATA ( row_id INTEGER PRIMARY KEY ASC NOT NULL,  session_id TEXT NOT NULL , session_json TEXT NOT NULL , session_json_type TEXT NOT NULL ); "

    .line 63
    .local v0, "createEventsTableSql":Ljava/lang/String;
    const-string v1, "CREATE TABLE IF NOT EXISTS SESSION_META_DATA(row_id INTEGER PRIMARY KEY ASC NOT NULL, session_id TEXT NOT NULL , header_json TEXT NOT NULL,session_state TINYINT NOT NULL DEFAULT 0, session_status TEXT );"

    .line 70
    .local v1, "createMetaDataTableSql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 74
    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ca/mdo/DatabaseHelper;->dbPath:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->i(Ljava/lang/String;)I

    .line 96
    const-string v0, "DROP TABLE IF EXISTS SESSION_DATA"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "DROP TABLE IF EXISTS SESSION_META_DATA"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/ca/mdo/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    return-void
.end method

.method protected persistEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "json_session_id"    # Ljava/lang/String;
    .param p2, "json_event"    # Ljava/lang/String;
    .param p3, "json_type"    # Ljava/lang/String;
    .param p4, "eventType"    # I

    .prologue
    const/4 v9, 0x2

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v4, v7

    .line 117
    .local v4, "row_bytes":J
    const-wide/32 v7, 0x200000

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 118
    const-string v7, "JSON EVENT is more than 2 MB not persisting "

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 121
    :cond_0
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 124
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-wide/16 v2, -0x1

    .line 125
    .local v2, "result":J
    const-string v6, "SESSION_DATA"

    .line 126
    .local v6, "tableName":Ljava/lang/String;
    const-string v7, "hdr"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 128
    const-string v6, "SESSION_META_DATA"

    .line 129
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v7, "session_id"

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "header_json"

    invoke-virtual {v0, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 141
    const-wide/16 v7, -0x1

    cmp-long v7, v2, v7

    if-nez v7, :cond_1

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to add event:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I

    .line 144
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    if-ne p4, v9, :cond_2

    .line 148
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lcom/ca/mdo/DatabaseHelper;->updateSessionMetadataState(Ljava/lang/String;I)V

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Metadata:: Session End event :: session id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Marked as Ended"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 151
    :cond_2
    const/4 v7, 0x3

    if-ne p4, v7, :cond_3

    .line 152
    const-string v7, "Metadata:: Crash event :: Going to update session state ....."

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 154
    const/4 v7, 0x2

    invoke-virtual {p0, p1, v7}, Lcom/ca/mdo/DatabaseHelper;->updateSessionMetadataState(Ljava/lang/String;I)V

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Metadata:: Crash event :: session id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Marked as Crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 157
    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":J
    .end local v6    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 134
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "result":J
    .restart local v6    # "tableName":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v7, "session_id"

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v7, "session_json"

    invoke-virtual {v0, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v7, "session_json_type"

    invoke-virtual {v0, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method protected purgeAllNonHeadersRecords(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "maxRowId"    # Ljava/lang/Integer;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 249
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session_json_type!=\'hdr\' AND row_id <="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 251
    return-void
.end method

.method protected purgeAllRecordsOfASession([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "sessionIds"    # [Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "skipHeader"    # Z

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 302
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/ca/mdo/DatabaseHelper;->getPlaceHolders(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "placeHolders":Ljava/lang/String;
    array-length v3, p1

    if-lez v3, :cond_1

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session_id in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "query":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session_json_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hdr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    :cond_0
    invoke-virtual {v0, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    .end local v2    # "query":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 312
    return-void
.end method

.method protected purgeHeaderRecordsOtherThanCurrentSession([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionIds"    # [Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 259
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/ca/mdo/DatabaseHelper;->getPlaceHolders(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "placeHolders":Ljava/lang/String;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_json_type=\'hdr\' and session_id not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 264
    :cond_0
    return-void
.end method

.method protected purgeSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 289
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 290
    .local v1, "ids":[Ljava/lang/String;
    const-string v2, "SESSION_DATA"

    const-string v3, "session_id =? "

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    const-string v2, "SESSION_META_DATA"

    const-string v3, "session_id =? "

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purging session id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SESSION_META_DATA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SESSION_DATA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 295
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "ids":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected purgeSessionEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 269
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 270
    .local v1, "ids":[Ljava/lang/String;
    const-string v2, "SESSION_DATA"

    const-string v3, "session_id =? "

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purging session id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SESSION_DATA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "ids":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected purgeSessionHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 279
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 280
    .local v1, "ids":[Ljava/lang/String;
    const-string v2, "SESSION_META_DATA"

    const-string v3, "session_id =? "

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purging session id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SESSION_META_DATA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 284
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "ids":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected querySessionHeaders()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v10, "sessionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "SESSION_META_DATA"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "row_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "header_json"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "row_id ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 177
    .local v9, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 186
    :goto_1
    return-object v10

    .line 182
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method protected updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "json_session_id"    # Ljava/lang/String;
    .param p2, "json_event"    # Ljava/lang/String;
    .param p3, "json_type"    # Ljava/lang/String;

    .prologue
    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 393
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-wide/16 v2, -0x1

    .line 395
    .local v2, "result":J
    const-string v4, "hdr"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    const-string v4, "header_json"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, "SESSION_META_DATA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 402
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not able to update event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I

    .line 405
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 406
    monitor-exit p0

    .line 407
    return-void

    .line 399
    :cond_1
    const-string v4, "session_json"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v4, "SESSION_DATA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "session_json_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    goto :goto_0

    .line 406
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "result":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected updateSessionMetadataState(Ljava/lang/String;I)V
    .locals 7
    .param p1, "json_session_id"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 367
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "session_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    invoke-virtual {p0}, Lcom/ca/mdo/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 370
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "query":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and session_state!=2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    :cond_0
    const-string v5, "SESSION_META_DATA"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v0, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 377
    .local v3, "result":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not able to update session metadata:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I

    .line 380
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 381
    return-void
.end method

.method protected updateSessionMetadataStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "json_session_id"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 349
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "session_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v0, p1}, Lcom/ca/mdo/DatabaseHelper;->updateSessionMetadata(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 354
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
