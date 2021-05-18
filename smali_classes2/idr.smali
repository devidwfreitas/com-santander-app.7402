.class public Lidr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lidq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Libu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 63
    const v3, 0x7f090481

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 64
    const v3, 0x7f090480

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 65
    const v3, 0x7f0f0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 66
    const v3, 0x7f0f0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 70
    const v3, 0x7f09048a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 71
    const v3, 0x7f090489

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 72
    const v3, 0x7f0f000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 73
    const v3, 0x7f0f000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 77
    const v3, 0x7f090488

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 78
    const v3, 0x7f090487

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 79
    const v3, 0x7f0f000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 80
    const v3, 0x7f0f000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 84
    const v3, 0x7f090484

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 85
    const v3, 0x7f090483

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 86
    const v3, 0x7f0f0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 87
    const v3, 0x7f0f0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 91
    const v3, 0x7f090486

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 92
    const v3, 0x7f090485

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 93
    const v3, 0x7f0f000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 94
    const v3, 0x7f0f000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 98
    const v3, 0x7f09048c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 99
    const v3, 0x7f09048b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 100
    const v3, 0x7f0f0011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 101
    const v3, 0x7f0f0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 105
    const v3, 0x7f09048e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 106
    const v3, 0x7f09048d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 107
    const v3, 0x7f0f0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 108
    const v3, 0x7f0f0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Libu;

    invoke-direct {v2}, Libu;-><init>()V

    .line 112
    const v3, 0x7f090482

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Libu;->a(Ljava/lang/String;)V

    .line 113
    const-string v3, ""

    invoke-virtual {v2, v3}, Libu;->b(Ljava/lang/String;)V

    .line 114
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Libu;->a([Ljava/lang/CharSequence;)V

    .line 115
    const v3, 0x7f0f0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Libu;->b([Ljava/lang/CharSequence;)V

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v1
.end method

.method public a(Lgkw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkw",
            "<",
            "Libr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Libq;

    invoke-direct {v0}, Libq;-><init>()V

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Libq;->setConta(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Libq;->setConnUuid(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->l()Lmwx;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Libq;->setTokenSessao(Ljava/lang/String;)V

    .line 45
    :cond_0
    new-instance v1, Lidv;

    new-instance v2, Lids;

    invoke-direct {v2, p0, p1}, Lids;-><init>(Lidr;Lgkw;)V

    invoke-direct {v1, v2}, Lidv;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Libq;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 52
    invoke-virtual {v1, v2}, Lidv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Libn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v1, Libn;

    invoke-direct {v1}, Libn;-><init>()V

    .line 127
    const-string v2, "APLICATIVO WAY"

    invoke-virtual {v1, v2}, Libn;->a(Ljava/lang/String;)V

    .line 128
    const v2, 0x7f020520

    invoke-virtual {v1, v2}, Libn;->a(I)V

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Libn;

    invoke-direct {v1}, Libn;-><init>()V

    .line 132
    const-string v2, "SANTANDER.COM.BR"

    invoke-virtual {v1, v2}, Libn;->a(Ljava/lang/String;)V

    .line 133
    const v2, 0x7f0204e0

    invoke-virtual {v1, v2}, Libn;->a(I)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Libn;

    invoke-direct {v1}, Libn;-><init>()V

    .line 137
    const-string v2, "@SANTANDER_BR"

    invoke-virtual {v1, v2}, Libn;->a(Ljava/lang/String;)V

    .line 138
    const v2, 0x7f02051e

    invoke-virtual {v1, v2}, Libn;->a(I)V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Libn;

    invoke-direct {v1}, Libn;-><init>()V

    .line 142
    const-string v2, "SANTANDER BRASIL"

    invoke-virtual {v1, v2}, Libn;->a(Ljava/lang/String;)V

    .line 143
    const v2, 0x7f0204d5

    invoke-virtual {v1, v2}, Libn;->a(I)V

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-object v0
.end method

.method public b(Lgkw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkw",
            "<",
            "Lhzt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 164
    new-instance v1, Lhzs;

    invoke-direct {v1}, Lhzs;-><init>()V

    .line 165
    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzs;->setConnUuid(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhzs;->setTokenSessao(Ljava/lang/String;)V

    .line 168
    new-instance v0, Libl;

    new-instance v2, Lidu;

    invoke-direct {v2, p0, p1}, Lidu;-><init>(Lidr;Lgkw;)V

    invoke-direct {v0, v2}, Libl;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhzs;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 173
    invoke-virtual {v0, v2}, Libl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method public c(Lgkw;)V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Litt;

    new-instance v1, Lidt;

    invoke-direct {v1, p0, p1}, Lidt;-><init>(Lidr;Lgkw;)V

    invoke-direct {v0, v1}, Litt;-><init>(Lgkv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v0, v1}, Litt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method
