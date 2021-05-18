.class public Laad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILaar;)Landroid/support/v7/app/AlertDialog;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Laag;

    invoke-direct {v1, p5}, Laag;-><init>(Laar;)V

    .line 167
    invoke-virtual {v0, p3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Laaf;

    invoke-direct {v1, p5}, Laaf;-><init>(Laar;)V

    .line 173
    invoke-virtual {v0, p4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Laaq;

    invoke-direct {v1, p5}, Laaq;-><init>(Laar;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 189
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laas;)Landroid/support/v7/app/AlertDialog;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_ok:I

    new-instance v2, Laao;

    invoke-direct {v2, p3}, Laao;-><init>(Laas;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 105
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 28
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    sget v0, Llc;->layout_dialog_central_atendimento:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 31
    sget v0, Lla;->central_dialog_cancel:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    sget v2, Lla;->central_dialog_ligue_agora:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 33
    sget v3, Lla;->central_dialog_chat:I

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 35
    new-instance v4, Laae;

    invoke-direct {v4, p0}, Laae;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v3, Laaj;

    invoke-direct {v3, p0}, Laaj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v2, Laak;

    invoke-direct {v2, v1}, Laak;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 53
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;Laar;)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->app_erro:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_erro_mensagem:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_tentar_novamente:I

    new-instance v2, Laan;

    invoke-direct {v2, p1}, Laan;-><init>(Laar;)V

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Laam;

    invoke-direct {v2, p1}, Laam;-><init>(Laar;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Laal;

    invoke-direct {v1, p1}, Laal;-><init>(Laar;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;Laas;)V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Llg;->car_card_tit_dialog_abandonar:I

    .line 194
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->car_card_msg_dialog_remover:I

    .line 195
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_sim:I

    new-instance v2, Laai;

    invoke-direct {v2, p1}, Laai;-><init>(Laas;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Llg;->app_cancelar:I

    new-instance v2, Laah;

    invoke-direct {v2}, Laah;-><init>()V

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 207
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laar;)V
    .locals 6

    .prologue
    .line 145
    sget v3, Llg;->app_sim:I

    sget v4, Llg;->app_nao:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILaar;)Landroid/support/v7/app/AlertDialog;

    .line 147
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Laas;)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Laap;

    invoke-direct {v1, p4}, Laap;-><init>(Laas;)V

    .line 122
    invoke-virtual {v0, p3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 131
    return-void
.end method
