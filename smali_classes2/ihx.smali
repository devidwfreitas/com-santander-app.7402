.class public Lihx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ligt;
.implements Lihw;


# instance fields
.field private a:Lihl;

.field private b:Landroid/app/Activity;

.field private c:Ligs;


# direct methods
.method public constructor <init>(Lihl;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lihx;->a:Lihl;

    .line 34
    check-cast p1, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    iput-object p1, p0, Lihx;->b:Landroid/app/Activity;

    .line 36
    new-instance v0, Ligu;

    iget-object v1, p0, Lihx;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ligu;-><init>(Landroid/app/Activity;Ligt;)V

    iput-object v0, p0, Lihx;->c:Ligs;

    .line 37
    return-void
.end method

.method private b(Ligg;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1}, Ligg;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    array-length v6, v5

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_7

    aget-object v1, v5, v2

    .line 87
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 88
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 89
    new-instance v0, Lgkx;

    invoke-direct {v0}, Lgkx;-><init>()V

    .line 90
    invoke-virtual {v0, v1}, Lgkx;->a(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 92
    :cond_2
    const-string v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkx;

    .line 97
    :cond_4
    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_5

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 100
    :cond_5
    invoke-virtual {v0}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lgky;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-le v10, v11, :cond_6

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v11

    :goto_2
    invoke-direct {v8, v9, v1}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v1, ""

    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual {p1, v4}, Ligg;->a(Ljava/util/ArrayList;)V

    .line 108
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lihx;->a:Lihl;

    const-string v1, "Ante\u00e7\u00e3o"

    const-string v2, "Desculpe, n\u00e3o conseguimos recuperar sua proposta neste momento. Tente Novamente mais tarde."

    invoke-interface {v0, v1, v2}, Lihl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lihx;->c:Ligs;

    invoke-interface {v0, p1}, Ligs;->a(I)V

    .line 55
    return-void
.end method

.method public a(Lgvb;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lihx;->a:Lihl;

    invoke-interface {v0, p1}, Lihl;->a(Lgvb;)V

    .line 72
    return-void
.end method

.method public a(Ligg;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lihx;->b(Ligg;)V

    .line 44
    iget-object v0, p0, Lihx;->a:Lihl;

    invoke-interface {v0, p1}, Lihl;->a(Ligg;)V

    .line 45
    return-void
.end method

.method public a(Ligl;Ligg;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lihx;->b:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 60
    iget-object v0, p0, Lihx;->c:Ligs;

    invoke-interface {v0, p1, p2}, Ligs;->a(Ligl;Ligg;)V

    .line 61
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lihx;->a:Lihl;

    const-string v1, "Caro cliente"

    const-string v2, "Desculpe, n\u00e3o conseguimos formalizar sua proposta neste momento. Tente Novamente mais tarde."

    invoke-interface {v0, v1, v2}, Lihl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->f(Z)V

    .line 66
    iget-object v0, p0, Lihx;->a:Lihl;

    invoke-interface {v0}, Lihl;->c()V

    .line 67
    return-void
.end method
