.class public Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Ljqd;

.field private c:Ljqk;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/EditText;)I
    .locals 1

    .prologue
    .line 292
    const/16 v0, 0x12

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;)Ljqk;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljro;

    new-instance v1, Ljpt;

    invoke-direct {v1, p0}, Ljpt;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;)V

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-direct {v0, v1, p0, v2}, Ljro;-><init>(Ljrn;Landroid/app/Activity;Ljqk;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 192
    invoke-virtual {v0, v1}, Ljro;->c([Ljava/lang/Object;)Lgne;

    .line 194
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;Ljqm;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljqm;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 198
    return-void
.end method

.method private a(Ljqm;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    invoke-virtual {v1, p1}, Ljqd;->c(Ljqm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy - HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 205
    new-instance v4, Lgvb;

    invoke-direct {v4}, Lgvb;-><init>()V

    .line 206
    const-string v5, "Senha de acesso"

    invoke-virtual {v4, v5}, Lgvb;->c(Ljava/lang/String;)V

    .line 207
    const-string v5, "Altera\u00e7\u00e3o de senha de acesso"

    invoke-virtual {v4, v5}, Lgvb;->g(Ljava/lang/String;)V

    .line 208
    const-string v5, "Altera\u00e7\u00e3o da senha com sucesso"

    invoke-virtual {v4, v5}, Lgvb;->d(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljqm;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgvb;->e(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v4, v0}, Lgvb;->d(Z)V

    .line 213
    invoke-virtual {v4, v2}, Lgvb;->o(Z)V

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    invoke-virtual {v1, p1}, Ljqd;->a(Ljqm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p1}, Ljqm;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    invoke-virtual {v1, p1}, Ljqd;->e(Ljqm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p1}, Ljqm;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    invoke-virtual {v1, p1}, Ljqd;->b(Ljqm;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    const-string v0, "Por favor, verifique se voc\u00ea digitou corretamente sua senha de acesso. Caso tenha d\u00favidas, consulte as orienta\u00e7\u00f5es localizadas no \"i\" no topo da tela."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p1}, Ljqm;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 269
    const-string v0, "Sistema indispon\u00edvel. Por favor, entre em contato com a Central de Atendimento Santander."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :sswitch_0
    const-string v2, "18369"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :sswitch_1
    const-string v0, "18370"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "18326"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "18306"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "18358"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "18367"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "18328"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "18368"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "FACSEG_30300019"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    .line 234
    :pswitch_0
    const-string v0, "Por medida de seguran\u00e7a, seu acesso foi cancelado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535"

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :pswitch_1
    const-string v0, "Por medidas de seguran\u00e7a, seu acesso foi bloqueado. Por favor, entre em contato com a Central de Atendimento Santander.Capitais: 4004-3535 Demais localidades: 0800 702 3535"

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :pswitch_2
    const-string v0, "Senha escolhida j\u00e1 foi utilizada e n\u00e3o poder\u00e1 ser repetida. Por favor, escolha uma nova senha diferente."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    const-string v0, "Senha informada \u00e9 inv\u00e1lida."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :pswitch_4
    const-string v0, "Senha inv\u00e1lida. Para sua seguran\u00e7a, a senha de acesso deve ter 6 (seis) n\u00fameros que n\u00e3o podem ser repetidos, nem sequenciais. Tamb\u00e9m n\u00e3o podem ser escolhidas as \u00faltimas senhas j\u00e1 utilizadas."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :pswitch_5
    const-string v0, "Senha inv\u00e1lida. Uma nova tentativa incorreta cancelar\u00e1 sua senha, e ser\u00e1 necess\u00e1rio cadastrar uma nova."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :pswitch_6
    const-string v0, "Sua senha foi cancelada por medida preventiva de seguran\u00e7a. Por favor, acesse o Internet Banking com seu CPF e cadastre uma nova senha. Em caso de d\u00favidas, entre em contato com a Central de Atendimento."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :pswitch_7
    const-string v0, "Usu\u00e1rio N\u00e3o localizado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535"

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :pswitch_8
    const-string v0, "Senha escolhida j\u00e1 foi utilizada e n\u00e3o poder\u00e1 ser repetida. Por favor, escolha uma nova senha diferente."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
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

.method private b(Landroid/widget/EditText;)I
    .locals 1

    .prologue
    .line 296
    const/16 v0, 0x81

    return v0
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;Ljqm;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b(Ljqm;)V

    return-void
.end method

.method private b(Ljqm;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    invoke-virtual {v0, p1}, Ljqd;->d(Ljqm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 280
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 281
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    invoke-virtual {v0, p1}, Ljqd;->e(Ljqm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 286
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 99
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 100
    const v0, 0x7f04017b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 102
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const v0, 0x7f10075b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    const-string v2, "Senha inv\u00e1lida. Para sua seguran\u00e7a, a nova senha de acesso deve cumprir as seguintes regras:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    new-instance v2, Ljpr;

    invoke-direct {v2, p0, v1}, Ljpr;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 119
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 121
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 126
    const-string v0, "TrocarSenha"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqk;->c(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqk;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqk;->b(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    sget-object v1, Ljql;->TROCAR_SENHA:Ljql;

    invoke-virtual {v0, v1}, Ljqk;->a(Ljql;)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-virtual {v0, v1}, Ljqd;->d(Ljqk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "Por favor, preencha todos os campos."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-virtual {v0, v1}, Ljqd;->b(Ljqk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "A senha de acesso e sua confirma\u00e7\u00e3o devem ser iguais. Por favor, digite novamente"

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-virtual {v0, v1}, Ljqd;->a(Ljqk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/Boolean;)Landroid/app/Dialog;

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    .line 152
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lnaf;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-virtual {v3, v1}, Ljqk;->c(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-virtual {v1, v2}, Ljqk;->a(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-virtual {v1, v0}, Ljqk;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    new-instance v0, Ljro;

    new-instance v1, Ljps;

    invoke-direct {v1, p0}, Ljps;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;)V

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    invoke-direct {v0, v1, p0, v2}, Ljro;-><init>(Ljrn;Landroid/app/Activity;Ljqk;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 172
    invoke-virtual {v0, v1}, Ljro;->c([Ljava/lang/Object;)Lgne;

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqk;->c(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqk;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljqk;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f04031f

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->setContentView(I)V

    .line 62
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->i:Landroid/app/Activity;

    .line 63
    new-instance v0, Ljqd;

    invoke-direct {v0}, Ljqd;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->b:Ljqd;

    .line 64
    new-instance v0, Ljqk;

    invoke-direct {v0}, Ljqk;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    .line 66
    const v0, 0x7f100ff8

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f100ff5

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->d:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f100ff6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->e:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f100ff7

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->f:Landroid/widget/EditText;

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 78
    const v1, 0x7f090769

    invoke-virtual {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 80
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 82
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->c:Ljqk;

    sget-object v1, Ljql;->GET_USUARIO_SN:Ljql;

    invoke-virtual {v0, v1}, Ljqk;->a(Ljql;)V

    .line 83
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a()V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 88
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;->a(Ljava/lang/Boolean;)Landroid/app/Dialog;

    .line 95
    const/4 v0, 0x1

    return v0
.end method
