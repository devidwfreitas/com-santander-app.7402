.class public Lalb;
.super Ljava/lang/Object;


# static fields
.field public static a:Lbfu;

.field public static b:Landroid/net/Uri;

.field private static c:Landroid/content/Context;

.field private static d:Lalh;

.field private static e:Ljava/util/Random;

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lalh;

    invoke-direct {v0}, Lalh;-><init>()V

    sput-object v0, Lalb;->d:Lalh;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lalb;->e:Ljava/util/Random;

    const/4 v0, 0x0

    sput v0, Lalb;->f:I

    const v0, 0x5f5e0ff

    sput v0, Lalb;->g:I

    invoke-static {}, Lbfz;->a()Lbfu;

    move-result-object v0

    sput-object v0, Lalb;->a:Lbfu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Laky;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lalb;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v0, Laky;

    invoke-direct {v0}, Laky;-><init>()V

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Laky;->a(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v7, "0fk"

    sget-object v0, Lalb;->e:Ljava/util/Random;

    sget v1, Lalb;->g:I

    sget v2, Lalb;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lalb;->f:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lale;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    new-instance v8, Lali;

    invoke-direct {v8}, Lali;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lalb;->i(Ljava/lang/String;)Laky;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Laky;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Lbfx;

    invoke-direct {v2}, Lbfx;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lbfx;->a(Ljava/lang/String;)V

    new-instance v0, Lbgb;

    invoke-direct {v0}, Lbgb;-><init>()V

    sget-object v1, Lalb;->a:Lbfu;

    invoke-interface {v1, v2, v0}, Lbfu;->a(Lbfx;Lbgb;)I

    sget-object v0, Lalb;->a:Lbfu;

    sget-object v1, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v8}, Lali;->a()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v8}, Lali;->b()Ljava/util/Vector;

    move-result-object v5

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lbfu;->a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Vector;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lalb;->a:Lbfu;

    sget-object v1, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v8}, Lali;->a()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lbfu;->a(Landroid/content/Context;Lbfx;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Lali;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4

    const-string v2, "0fk"

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lalb;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lalb;->i(Ljava/lang/String;)Laky;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Lbfx;

    invoke-virtual {v2}, Laky;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbfx;-><init>(Ljava/lang/String;)V

    sget-object v2, Lalb;->a:Lbfu;

    sget-object v3, Lalb;->c:Landroid/content/Context;

    invoke-interface {v2, v3, v1, v0}, Lbfu;->a(Landroid/content/Context;Lbfx;Ljava/lang/StringBuffer;)I

    move-result v1

    :cond_2
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "ErrD"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lala;)V
    .locals 6

    sput-object p0, Lalb;->c:Landroid/content/Context;

    sput-object p1, Lalb;->b:Landroid/net/Uri;

    :try_start_0
    sget-object v0, Lalb;->a:Lbfu;

    const-string v1, "E831FB039F958F1BC6EB57E038A29945368F67824097E6075010CD576EDCE0AC"

    invoke-static {v1}, Lalb;->h(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lbfu;->a([BLandroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lalb;->d:Lalh;

    new-instance v2, Lalg;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Outros_Init"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lalh;->a(Lalg;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lalb;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laky;

    invoke-virtual {v0}, Laky;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lalb;->d:Lalh;

    const-string v1, "onIllegalArgument"

    invoke-virtual {v0, v1}, Lalh;->b(Ljava/lang/String;)V

    const-string v0, "N\u00e3o foi poss\u00edvel iniciar: dados inv\u00e1lidos."

    sget-object v1, Lalb;->d:Lalh;

    invoke-virtual {v1, v0}, Lalh;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "log"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lalb;->d:Lalh;

    new-instance v2, Lalg;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Outros_ErrInit"

    const-string v5, "catch"

    invoke-direct {v2, v3, v4, v5, v1}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lalh;->a(Lalg;)V

    sget-object v0, Lalb;->d:Lalh;

    invoke-interface {p2, v0}, Lala;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lalb;->a:Lbfu;

    new-instance v2, Lalf;

    invoke-direct {v2, p2, p0}, Lalf;-><init>(Lala;Landroid/content/Context;)V

    invoke-interface {v0, p0, v1, v2}, Lbfu;->a(Landroid/content/Context;Ljava/util/List;Lbfr;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lalb;->a:Lbfu;

    sget-object v1, Lalb;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lbfu;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lalb;->i(Ljava/lang/String;)Laky;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Lalb;->a:Lbfu;

    sget-object v1, Lalb;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lbfu;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lalb;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lalb;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)J
    .locals 3

    new-instance v0, Lbgc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbgc;-><init>(F)V

    new-instance v1, Lbfx;

    invoke-static {p0}, Lalb;->i(Ljava/lang/String;)Laky;

    move-result-object v2

    invoke-virtual {v2}, Laky;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbfx;-><init>(Ljava/lang/String;)V

    sget-object v2, Lalb;->a:Lbfu;

    invoke-interface {v2, v1, v0}, Lbfu;->a(Lbfx;Lbgc;)I

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v0, v1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lbgc;->a()F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0x64

    mul-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x7530

    int-to-long v0, v0

    goto :goto_0
.end method

.method static synthetic d()Lalh;
    .locals 1

    sget-object v0, Lalb;->d:Lalh;

    return-object v0
.end method

.method private static e()Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lalb;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lakx;->a(Landroid/database/Cursor;)Laky;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lalb;->a(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErrD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x186a0

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic f(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lalb;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lalb;->d:Lalh;

    invoke-virtual {v0, p0}, Lalh;->a(Ljava/lang/String;)V

    invoke-static {}, Lalb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lalb;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lalb;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lalb;->d:Lalh;

    const-string v1, "loginRoot"

    invoke-virtual {v0, v1}, Lalh;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lalb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lalb;->d:Lalh;

    const-string v1, "loginEmu"

    invoke-virtual {v0, v1}, Lalh;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "erro"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lalb;->d:Lalh;

    new-instance v2, Lalg;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Erros ID Santander"

    const-string v5, "Inicializa\u00e7\u00e3o da Biblioteca"

    invoke-direct {v2, v3, v4, v5, v0}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lalh;->a(Lalg;)V

    return-void

    :cond_3
    sget-object v0, Lalb;->d:Lalh;

    const-string v1, "loginDatablink"

    invoke-virtual {v0, v1}, Lalh;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lald;

    invoke-direct {v1}, Lald;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0, v0}, Lald;->a(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception decoding Hex string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static i(Ljava/lang/String;)Laky;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lalb;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lalb;->b:Landroid/net/Uri;

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lakx;->a(Landroid/database/Cursor;)Laky;

    move-result-object v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method
