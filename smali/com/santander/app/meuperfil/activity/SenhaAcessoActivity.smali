.class public Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;
.super Lgrs;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljqk;

.field private F:Ljqd;

.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 45
    const-string v0, "SenhaAcessoActivity"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 229
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 230
    const v0, 0x7f040188

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 231
    const v0, 0x7f100772

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 270
    const-string v1, "Sistema indispon\u00edvel. Por favor, entre em contato com a Central de Atendimento Santander."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    const v0, 0x7f1005ed

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentTextView;

    .line 275
    const-string v1, "Alerta"

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const v0, 0x7f100783

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 277
    new-instance v1, Ljpz;

    invoke-direct {v1, p0}, Ljpz;-><init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 286
    return-void

    .line 233
    :sswitch_0
    const-string v3, "18369"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "18370"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "18326"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "18306"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "18358"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "18367"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "18328"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "18368"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "FACSEG_30300019"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    .line 235
    :pswitch_0
    const-string v1, "Por medida de seguran\u00e7a, seu acesso foi cancelado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 239
    :pswitch_1
    const-string v1, "Por medidas de seguran\u00e7a, seu acesso foi bloqueado. Por favor, entre em contato com a Central de Atendimento Santander.Capitais: 4004-3535 Demais localidades: 0800 702 3535"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 243
    :pswitch_2
    const-string v1, "Senha escolhida j\u00e1 foi utilizada e n\u00e3o poder\u00e1 ser repetida. Por favor, escolha uma nova senha diferente."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 247
    :pswitch_3
    const-string v1, "Senha informada \u00e9 inv\u00e1lida."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 250
    :pswitch_4
    const-string v1, "Senha inv\u00e1lida. Para sua seguran\u00e7a, a senha de acesso deve ter 6 (seis) n\u00fameros que n\u00e3o podem ser repetidos, nem sequenciais. Tamb\u00e9m n\u00e3o podem ser escolhidas as \u00faltimas senhas j\u00e1 utilizadas."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 254
    :pswitch_5
    const-string v1, "Senha inv\u00e1lida. Uma nova tentativa incorreta cancelar\u00e1 sua senha, e ser\u00e1 necess\u00e1rio cadastrar uma nova."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 258
    :pswitch_6
    const-string v1, "Sua senha foi cancelada por medida preventiva de seguran\u00e7a. Por favor, acesse o Internet Banking com seu CPF e cadastre uma nova senha. Em caso de d\u00favidas, entre em contato com a Central de Atendimento."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 262
    :pswitch_7
    const-string v1, "Usu\u00e1rio N\u00e3o localizado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 266
    :pswitch_8
    const-string v1, "Senha escolhida j\u00e1 foi utilizada e n\u00e3o poder\u00e1 ser repetida. Por favor, escolha uma nova senha diferente."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b9c87ac -> :sswitch_8
        0x2ccb9f2 -> :sswitch_3
        0x2ccba30 -> :sswitch_2
        0x2ccba32 -> :sswitch_6
        0x2ccba8f -> :sswitch_4
        0x2ccbaad -> :sswitch_5
        0x2ccbaae -> :sswitch_7
        0x2ccbaaf -> :sswitch_0
        0x2ccbac5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->B:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 127
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 128
    const v0, 0x7f04017b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 131
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const v0, 0x7f10075b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    const-string v2, "Senha inv\u00e1lida. Para sua seguran\u00e7a, a nova senha de acesso deve cumprir as seguintes regras:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 142
    new-instance v2, Ljpw;

    invoke-direct {v2, p0, v1}, Ljpw;-><init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 150
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 152
    return-object v1
.end method

.method public continuar(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqk;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqk;->b(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->F:Ljqd;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    invoke-virtual {v0, v1}, Ljqd;->c(Ljqk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Por favor, informe a senha."

    invoke-static {p0, v0}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 226
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->F:Ljqd;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    invoke-virtual {v0, v1}, Ljqd;->b(Ljqk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    const-string v0, "A senha de acesso e sua confirma\u00e7\u00e3o devem ser iguais. Por favor, digite novamente."

    invoke-static {p0, v0}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->F:Ljqd;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    invoke-virtual {v0, v1}, Ljqd;->a(Ljqk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const v0, 0x7f04017c

    invoke-static {p0, v0}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->A:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->C:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    invoke-virtual {v0, v1}, Ljqk;->a(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    invoke-virtual {v0, v2}, Ljqk;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    iget-boolean v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->D:Z

    if-eqz v0, :cond_3

    .line 186
    new-instance v0, Lfze;

    new-instance v1, Ljpx;

    invoke-direct {v1, p0}, Ljpx;-><init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)V

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    iget-object v3, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->C:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lfze;-><init>(Lfzi;Landroid/app/Activity;Ljqk;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Void;

    .line 205
    invoke-virtual {v0, v1}, Lfze;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqk;->a(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqk;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_3
    new-instance v0, Lfzn;

    new-instance v1, Ljpy;

    invoke-direct {v1, p0}, Ljpy;-><init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)V

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    invoke-direct {v0, v1, p0, v2}, Lfzn;-><init>(Lfzi;Landroid/app/Activity;Ljqk;)V

    new-array v1, v5, [Ljava/lang/Void;

    .line 223
    invoke-virtual {v0, v1}, Lfzn;->c([Ljava/lang/Object;)Lgne;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->b:Landroid/app/Activity;

    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f04038f

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->y:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cpf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->z:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cadastro"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->D:Z

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contaPreferencial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contaPreferencial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->A:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codRetorno"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codRetorno"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->B:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmir;->h(Ljava/lang/String;)V

    .line 73
    :cond_0
    new-instance v0, Ljqd;

    invoke-direct {v0}, Ljqd;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->F:Ljqd;

    .line 74
    new-instance v0, Ljqk;

    invoke-direct {v0}, Ljqk;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->E:Ljqk;

    .line 76
    const v0, 0x7f1011a6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->f:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f1011a7

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->g:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f1011a8

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->w:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f1011ab

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->c:Landroid/widget/Button;

    .line 80
    const v0, 0x7f10055f

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->x:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f1011a9

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->d:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f1011aa

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->e:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->z:Ljava/lang/String;

    invoke-static {v4}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->B:Ljava/lang/String;

    const-string v1, "104"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->w:Landroid/widget/TextView;

    const-string v1, "Agora crie sua senha de acesso, ela \u00e9 utilizada no aplicativo Santander, no Internet Banking e na Central de Atendimento Santander."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->c:Landroid/widget/Button;

    new-instance v1, Ljpv;

    invoke-direct {v1, p0}, Ljpv;-><init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 107
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 109
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 111
    return-void

    .line 66
    :cond_2
    const-string v0, ""

    goto/16 :goto_0

    .line 67
    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->B:Ljava/lang/String;

    const-string v1, "105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020568

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->w:Landroid/widget/TextView;

    const-string v1, "Agora crie sua senha de acesso, ela \u00e9 utilizada no aplicativo Santander e no Internet Banking."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 116
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 117
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Ljava/lang/Boolean;)Landroid/app/Dialog;

    .line 123
    const/4 v0, 0x1

    return v0
.end method
