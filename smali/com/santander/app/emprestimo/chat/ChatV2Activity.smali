.class public Lcom/santander/app/emprestimo/chat/ChatV2Activity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static b:Lhno;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Lbr/com/santander/uisdk/error/SantanderErrorView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a()Lhno;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    return-object v0
.end method

.method public static synthetic a(Lhno;)Lhno;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    return-object p0
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->f()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/error/SantanderErrorView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    .line 147
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->a(Lhno;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->c(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->c()V

    .line 150
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->d()V

    .line 151
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->e()V

    .line 152
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->i()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    sget-object v1, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v1}, Lhno;->b(Lhno;)I

    move-result v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setIcon(I)V

    .line 156
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->h()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    sget-object v1, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v1}, Lhno;->c(Lhno;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    sget-object v1, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v1}, Lhno;->d(Lhno;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextSubTitle(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 164
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->e(Lhno;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Lbr/com/santander/uisdk/error/SantanderChatErrorItem;

    new-instance v2, Lhnm;

    invoke-direct {v2, p0}, Lhnm;-><init>(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V

    invoke-direct {v1, v0, v2}, Lbr/com/santander/uisdk/error/SantanderChatErrorItem;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->a:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const/4 v2, 0x1

    new-array v2, v2, [Lbr/com/santander/uisdk/error/SantanderErrorItem;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a([Lbr/com/santander/uisdk/error/SantanderErrorItem;)V

    .line 173
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 176
    const v1, 0x7f0903b7

    .line 178
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f090139

    :goto_0
    const v3, 0x7f090072

    const v4, 0x7f090208

    new-instance v5, Lhnn;

    invoke-direct {v5, p0}, Lhnn;-><init>(Lcom/santander/app/emprestimo/chat/ChatV2Activity;)V

    move-object v0, p0

    .line 176
    invoke-static/range {v0 .. v5}, Lhys;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;)V

    .line 194
    return-void

    .line 178
    :cond_0
    const v2, 0x7f090138

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->g(Lhno;)Lhnl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->g(Lhno;)Lhnl;

    move-result-object v0

    invoke-interface {v0}, Lhnl;->a()V

    .line 200
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->g(Lhno;)Lhnl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->g(Lhno;)Lhnl;

    move-result-object v0

    invoke-interface {v0}, Lhnl;->b()V

    .line 206
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->g(Lhno;)Lhnl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    invoke-static {v0}, Lhno;->g(Lhno;)Lhnl;

    move-result-object v0

    invoke-interface {v0}, Lhnl;->c()V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->setContentView(I)V

    .line 131
    sget-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "builder not create!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->g()V

    .line 135
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b()V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/santander/app/emprestimo/chat/ChatV2Activity;->b:Lhno;

    .line 142
    return-void
.end method
