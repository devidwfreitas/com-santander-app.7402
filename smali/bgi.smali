.class public Lbgi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Landroid/database/Cursor;

.field final synthetic d:Lbgh;


# direct methods
.method public constructor <init>(Lbgh;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lbgi;->d:Lbgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object v0, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 225
    iput-object v0, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lbgi;->c:Landroid/database/Cursor;

    .line 265
    iget-object v0, p0, Lbgi;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lbgi;->close()V

    .line 250
    :cond_0
    iget-object v0, p0, Lbgi;->d:Lbgh;

    invoke-virtual {v0}, Lbgh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 252
    iget-object v0, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lbgi;->close()V

    .line 259
    :cond_0
    iget-object v0, p0, Lbgi;->d:Lbgh;

    invoke-virtual {v0}, Lbgh;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 260
    iget-object v0, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 232
    iput-object v1, p0, Lbgi;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 234
    :cond_0
    iget-object v0, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    iput-object v1, p0, Lbgi;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    :cond_1
    iget-object v0, p0, Lbgi;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lbgi;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    iput-object v1, p0, Lbgi;->c:Landroid/database/Cursor;

    .line 244
    :cond_2
    return-void
.end method
