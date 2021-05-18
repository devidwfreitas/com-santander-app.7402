.class public Lgfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgfh;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lgfi;

.field private c:Lggo;

.field private d:Landroid/app/Dialog;

.field private e:Lger;


# direct methods
.method public constructor <init>(Lgfi;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lgfj;->b:Lgfi;

    .line 50
    iput-object p2, p0, Lgfj;->a:Landroid/app/Activity;

    .line 51
    new-instance v0, Lggp;

    invoke-direct {v0}, Lggp;-><init>()V

    iput-object v0, p0, Lgfj;->c:Lggo;

    .line 52
    return-void
.end method

.method static synthetic a(Lgfj;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgfj;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lgfj;Lger;)Lger;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lgfj;->e:Lger;

    return-object p1
.end method

.method static synthetic a(Lgfj;Lis;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lgfj;->a(Lis;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgfj;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lgfj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lis;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    const-string v0, ""

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "positionDate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    const-string v2, "Error"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    const-string v0, ""

    .line 110
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MMM-yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 111
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lgfj;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lgfj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 165
    .line 167
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MMM-yyyy"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lgfj;)Lgfi;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgfj;->b:Lgfi;

    return-object v0
.end method

.method private b(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    .line 126
    const-string v0, ""

    .line 128
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MMM-yyyy"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lgfj;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgfj;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lgfj;)Lger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgfj;->e:Lger;

    return-object v0
.end method


# virtual methods
.method public a(Lgfg;)Lger;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lgfj;->e:Lger;

    invoke-virtual {v0, p1}, Lger;->a(Lgfg;)Lger;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->b()Ljava/util/List;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lgfj;->b:Lgfi;

    invoke-interface {v1, v0}, Lgfi;->a(Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lgfj;->a:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lgfj;->d:Landroid/app/Dialog;

    .line 64
    iget-object v0, p0, Lgfj;->c:Lggo;

    new-instance v1, Lgfk;

    invoke-direct {v1, p0, p2}, Lgfk;-><init>(Lgfj;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lgfj;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Lggo;->a(Lgkw;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    .line 139
    :try_start_0
    iget-object v0, p0, Lgfj;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "jsons/carteiraDiaria.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 141
    new-array v1, v1, [B

    .line 142
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 143
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method
