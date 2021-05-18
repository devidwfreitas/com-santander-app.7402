.class public Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liyl;


# static fields
.field private static A:Landroid/app/Dialog;

.field private static z:Landroid/app/Activity;


# instance fields
.field private a:Ljaj;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:[Landroid/widget/Button;

.field private y:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->A:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)Ljaj;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a:Ljaj;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->h()V

    return-void
.end method

.method public static synthetic f()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->A:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic g()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->z:Landroid/app/Activity;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 102
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    .line 103
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    sget-object v2, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmwy;->a(Ljava/lang/String;)V

    .line 109
    :goto_0
    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 110
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->j(Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->g(Ljava/lang/Boolean;)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    sget-object v2, Lnaz;->HOME_CONSULTIVA:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmwy;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Liyi;

    invoke-direct {v0, p0}, Liyi;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 68
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 69
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->f:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 71
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->b:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->c:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090942

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f100330

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->d:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f10033a

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->g:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->w:Landroid/widget/EditText;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v2, 0x0

    const v0, 0x7f10033e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 84
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v2, 0x1

    const v0, 0x7f10033f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 85
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v2, 0x2

    const v0, 0x7f100340

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 86
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v2, 0x3

    const v0, 0x7f100342

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 87
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v2, 0x4

    const v0, 0x7f100343

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 89
    const v0, 0x7f100344

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->y:Landroid/widget/ImageButton;

    .line 91
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->e:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a:Ljaj;

    invoke-interface {v0}, Ljaj;->b()V

    .line 95
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->y:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 125
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 127
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 129
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 130
    const v0, 0x7f040195

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 132
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 134
    new-instance v0, Lmyg;

    iget-object v2, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 135
    new-instance v0, Lmyh;

    iget-object v2, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 137
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Liyg;

    invoke-direct {v2, p0, v1, p2}, Liyg;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;Landroid/app/Dialog;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f10055e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "IdSantanderAtivarCartao"

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    aget-object v0, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v1, "id"

    sget-object v2, Liut;->PROCESSO_INTERROMPIDO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    const-string v1, "content"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->x:[Landroid/widget/Button;

    invoke-static {v0}, Lmzv;->a([Landroid/widget/Button;)Ljava/util/List;

    .line 187
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a:Ljaj;

    new-instance v1, Liyh;

    invoke-direct {v1, p0}, Liyh;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;)V

    invoke-interface {v0, v1}, Ljaj;->b(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09068c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 53
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->setContentView(I)V

    .line 54
    sput-object p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->z:Landroid/app/Activity;

    .line 56
    new-instance v0, Ljak;

    invoke-direct {v0, p0}, Ljak;-><init>(Liyl;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a:Ljaj;

    .line 57
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;->a:Ljaj;

    invoke-interface {v0}, Ljaj;->a()V

    .line 58
    return-void
.end method
