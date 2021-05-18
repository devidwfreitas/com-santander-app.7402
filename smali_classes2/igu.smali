.class public Ligu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ligs;


# static fields
.field private static final a:Ljava/lang/String; = "ERROR_JSON_OBJECT"


# instance fields
.field private b:Lmiq;

.field private c:Ligt;

.field private final d:Landroid/app/Activity;

.field private e:Liia;

.field private f:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ligt;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ligu;->d:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Ligu;->c:Ligt;

    .line 56
    new-instance v0, Liib;

    invoke-direct {v0}, Liib;-><init>()V

    iput-object v0, p0, Ligu;->e:Liia;

    .line 57
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ligu;->b:Lmiq;

    .line 58
    return-void
.end method

.method private a(Ligc;Ligg;)Lgvb;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 177
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 179
    const-string v0, "formdigiFormProposta.Suc.End"

    invoke-virtual {v2, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 180
    const-string v0, "formdigiFormPropostaShare"

    invoke-virtual {v2, v0}, Lgvb;->j(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2, v10}, Lgvb;->s(Z)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 186
    invoke-virtual {p1}, Ligc;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 189
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    invoke-virtual {v2}, Lgvb;->h()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lgky;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-direct {v7, v8, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 192
    invoke-virtual {v2}, Lgvb;->h()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lgky;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-direct {v7, v5, v8}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    const-string v0, "Formaliza\u00e7\u00e3o"

    invoke-virtual {v2, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v10}, Lgvb;->d(Z)V

    .line 198
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0, v1}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Ligc;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Ligc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Formaliza\u00e7\u00e3o de "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ligg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " conclu\u00edda com sucesso."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lgvb;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 205
    return-object v2
.end method

.method private a(Ligg;)Lgvb;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 210
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 212
    const-string v0, "formdigiFormProposta.Err.End"

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 213
    const-string v0, "formdigiFormPropostaShare"

    invoke-virtual {v1, v0}, Lgvb;->j(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 216
    invoke-virtual {p1}, Ligg;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkx;

    .line 217
    invoke-virtual {v1}, Lgvb;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 220
    :cond_0
    const-string v0, "Formaliza\u00e7\u00e3o"

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, v4}, Lgvb;->e(Z)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgvb;->d(Z)V

    .line 227
    invoke-virtual {v1, v4}, Lgvb;->s(Z)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Formaliza\u00e7\u00e3o de "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ligg;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " n\u00e3o realizada."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comprovante - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lgvb;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 232
    return-object v1
.end method

.method static synthetic a(Ligu;Ligc;Ligg;)Lgvb;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ligu;->a(Ligc;Ligg;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ligu;)Ligt;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ligu;->c:Ligt;

    return-object v0
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "challengeValue"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->y()Lmwy;

    move-result-object v3

    invoke-virtual {v3}, Lmwy;->b()Lmwx;

    move-result-object v3

    invoke-virtual {v3}, Lmwx;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 164
    :cond_1
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "otp"

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->y()Lmwy;

    move-result-object v3

    invoke-virtual {v3}, Lmwy;->c()Live;

    move-result-object v3

    invoke-virtual {v3}, Live;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v2, "ERROR_JSON_OBJECT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Ligu;)Lmiq;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ligu;->b:Lmiq;

    return-object v0
.end method

.method private b(I)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 148
    :try_start_0
    const-string v0, "proposalId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v2, "ERROR_JSON_OBJECT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Ligu;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ligu;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Ligu;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ligu;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Ligu;)Liia;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ligu;->e:Liia;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Ligu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ligu;->f:Landroid/app/Dialog;

    .line 64
    iget-object v0, p0, Ligu;->e:Liia;

    new-instance v1, Ligv;

    invoke-direct {v1, p0}, Ligv;-><init>(Ligu;)V

    .line 94
    invoke-direct {p0, p1}, Ligu;->b(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Liia;->a(Lgkw;Lorg/json/JSONObject;)V

    .line 95
    return-void
.end method

.method public a(Ligl;Ligg;)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Ligu;->e:Liia;

    new-instance v1, Ligw;

    invoke-direct {v1, p0, p2}, Ligw;-><init>(Ligu;Ligg;)V

    .line 140
    invoke-virtual {p1}, Ligl;->a()I

    move-result v2

    invoke-direct {p0, v2}, Ligu;->b(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0}, Ligu;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 99
    invoke-interface {v0, v1, v2, v3}, Liia;->a(Lgkw;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 141
    return-void
.end method
