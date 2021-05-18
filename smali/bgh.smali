.class public Lbgh;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "datablinkdb"

.field protected static final b:I = 0x2


# instance fields
.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;

.field protected final g:Ljava/lang/String;

.field protected final h:Ljava/lang/String;

.field protected final i:Ljava/lang/String;

.field protected final j:Ljava/lang/String;

.field protected final k:Ljava/lang/String;

.field protected final l:Ljava/lang/String;

.field protected final m:Ljava/lang/String;

.field protected final n:Ljava/lang/String;

.field protected final o:Ljava/lang/String;

.field protected final p:Ljava/lang/String;

.field protected final q:Ljava/lang/String;

.field protected final r:Ljava/lang/String;

.field protected final s:Ljava/lang/String;

.field protected final t:Ljava/lang/String;

.field protected final u:Ljava/lang/String;

.field protected final v:Ljava/lang/String;

.field w:Lbgi;

.field final synthetic x:Lbgg;


# direct methods
.method public constructor <init>(Lbgg;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 82
    iput-object p1, p0, Lbgh;->x:Lbgg;

    .line 80
    const-string v0, "datablinkdb"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    const-string v0, "id"

    iput-object v0, p0, Lbgh;->c:Ljava/lang/String;

    .line 44
    const-string v0, "blob"

    iput-object v0, p0, Lbgh;->d:Ljava/lang/String;

    .line 45
    const-string v0, "serialnumber"

    iput-object v0, p0, Lbgh;->e:Ljava/lang/String;

    .line 46
    const-string v0, "datablink_blob"

    iput-object v0, p0, Lbgh;->f:Ljava/lang/String;

    .line 51
    const-string v0, "appblob"

    iput-object v0, p0, Lbgh;->g:Ljava/lang/String;

    .line 52
    const-string v0, "datablink_app_blob"

    iput-object v0, p0, Lbgh;->h:Ljava/lang/String;

    .line 57
    const-string v0, "datablink_chat_message"

    iput-object v0, p0, Lbgh;->i:Ljava/lang/String;

    .line 58
    const-string v0, "datablink_chat_channel"

    iput-object v0, p0, Lbgh;->j:Ljava/lang/String;

    .line 60
    const-string v0, "status"

    iput-object v0, p0, Lbgh;->k:Ljava/lang/String;

    .line 61
    const-string v0, "date"

    iput-object v0, p0, Lbgh;->l:Ljava/lang/String;

    .line 62
    const-string v0, "channelId"

    iput-object v0, p0, Lbgh;->m:Ljava/lang/String;

    .line 63
    const-string v0, "text"

    iput-object v0, p0, Lbgh;->n:Ljava/lang/String;

    .line 65
    const-string v0, "name"

    iput-object v0, p0, Lbgh;->o:Ljava/lang/String;

    .line 66
    const-string v0, "serialNumber"

    iput-object v0, p0, Lbgh;->p:Ljava/lang/String;

    .line 71
    const-string v0, "title"

    iput-object v0, p0, Lbgh;->q:Ljava/lang/String;

    .line 72
    const-string v0, "data"

    iput-object v0, p0, Lbgh;->r:Ljava/lang/String;

    .line 73
    const-string v0, "date"

    iput-object v0, p0, Lbgh;->s:Ljava/lang/String;

    .line 74
    const-string v0, "status"

    iput-object v0, p0, Lbgh;->t:Ljava/lang/String;

    .line 75
    const-string v0, "serial"

    iput-object v0, p0, Lbgh;->u:Ljava/lang/String;

    .line 77
    const-string v0, "datablink_push_history"

    iput-object v0, p0, Lbgh;->v:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "blob"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "serialnumber"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    const-string v1, "datablink_blob"

    invoke-static {v1, v0}, Lbgg;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    const-string v1, "appblob"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "datablink_app_blob"

    invoke-static {v1, v0}, Lbgg;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "datablink_chat_channel"

    invoke-static {v1, v0}, Lbgg;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-string v0, "status"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v0, "date"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v0, "text"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lbgh;->x:Lbgg;

    const-string v1, "datablink_chat_message"

    const-string v3, "channelId"

    const-string v4, "datablink_chat_channel"

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Lbgg;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v1, "serial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v1, "datablink_push_history"

    invoke-static {v1, v0}, Lbgg;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "columntable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "sizes_table"

    invoke-static {v1, v0}, Lbgg;->b(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Lbgh;->a()Lbgi;

    move-result-object v3

    .line 162
    iget-object v0, p0, Lbgh;->x:Lbgg;

    const-string v4, "sizes_table"

    const-string v5, "columntable"

    invoke-virtual {v0, v4, v5, p2}, Lbgg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v3}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 171
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 172
    const-string v5, "size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v5, "columntable"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v3}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "sizes_table"

    const-string v6, "columntable = ?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {v0, v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    :goto_1
    invoke-virtual {v3}, Lbgi;->close()V

    .line 185
    return v2

    .line 179
    :cond_0
    invoke-virtual {v3}, Lbgi;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sizes_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lbgh;->x:Lbgg;

    const-string v2, "sizes_table"

    const-string v3, "columntable"

    invoke-virtual {v1, v2, v3, p1}, Lbgg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lbgh;->a()Lbgi;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lbgi;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lbgi;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_0

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    :try_start_0
    const-string v3, "size"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 205
    invoke-virtual {v2}, Lbgi;->close()V

    .line 206
    :cond_0
    return v0

    .line 201
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public a()Lbgi;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lbgh;->w:Lbgi;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lbgi;

    invoke-direct {v0, p0}, Lbgi;-><init>(Lbgh;)V

    iput-object v0, p0, Lbgh;->w:Lbgi;

    .line 217
    :cond_0
    iget-object v0, p0, Lbgh;->w:Lbgi;

    invoke-virtual {v0}, Lbgi;->close()V

    .line 219
    iget-object v0, p0, Lbgh;->w:Lbgi;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lbgh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lbgh;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lbgh;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lbgh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lbgh;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lbgh;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
