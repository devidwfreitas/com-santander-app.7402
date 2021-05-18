.class public Lhea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 309
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Acao"

    :goto_0
    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->h(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->h(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Por favor informe o valor."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 495
    :goto_1
    return-void

    .line 309
    :cond_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Acao"

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Por favor informe o valor."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 327
    :cond_2
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "R"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_3

    .line 334
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "O valor tem que ser maior que zero."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 339
    :cond_3
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 340
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Preenchimento do campo Inicio (mm/aaaa) obrigat\u00f3rio."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 345
    :cond_4
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Preenchimento do campo Inicio (mm/aaaa) obrigat\u00f3rio."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 351
    :cond_5
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    .line 354
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Digite uma data v\u00e1lida."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 359
    :cond_6
    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 361
    aget-object v1, v0, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 362
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 366
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 367
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 368
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 369
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 371
    if-le v2, v0, :cond_7

    .line 372
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Digite um ano v\u00e1lido."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 377
    :cond_7
    if-lez v1, :cond_8

    const/16 v0, 0xc

    if-le v1, v0, :cond_9

    .line 378
    :cond_8
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Digite um m\u00eas v\u00e1lido."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 383
    :cond_9
    if-le v7, v1, :cond_a

    .line 384
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Digite um m\u00eas v\u00e1lido."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 389
    :cond_a
    if-ne v7, v1, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v6, v0, :cond_b

    .line 390
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Selecione um dia v\u00e1lido."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->f(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 403
    :cond_b
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 404
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "O campo N\u00ba de meses n\u00e3o pode ser zero."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 409
    :cond_c
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 412
    const-string v0, "0"

    .line 415
    :cond_d
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v2, v2, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->j(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 416
    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v2

    if-eq v2, v9, :cond_12

    .line 418
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_e

    .line 419
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Preenchimento do campo ag\u00eancia obrigat\u00f3rio."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 424
    :cond_e
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 425
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Preenchimento do campo ag\u00eancia obrigat\u00f3rio."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 430
    :cond_f
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_10

    .line 431
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Preenchimento do campo conta obrigat\u00f3rio."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 436
    :cond_10
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 437
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Preenchimento do campo conta obrigat\u00f3rio."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 449
    :cond_11
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->m(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfwh;

    move-result-object v2

    iget-object v6, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v6}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lfwh;->c(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->m(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfwh;

    move-result-object v2

    iget-object v6, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v6}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lfwh;->f(Ljava/lang/String;)V

    .line 453
    :cond_12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 455
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 456
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 457
    invoke-virtual {v6, v10, v2}, Ljava/util/Calendar;->add(II)V

    .line 459
    const-string v1, ""

    .line 461
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/yyyy"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 468
    :goto_2
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {v2, v4}, Lheq;->s(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lheq;->n(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {v2, v5}, Lheq;->a(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {v2, v5}, Lheq;->k(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lheq;->r(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lheq;->b(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->a()I

    move-result v1

    .line 476
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v0

    if-nez v0, :cond_13

    .line 477
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 478
    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 479
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v0

    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->k(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lheq;->d(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v0

    iget-object v2, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->l(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lheq;->g(Ljava/lang/String;)V

    .line 488
    :cond_13
    :goto_3
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 489
    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v2, v0}, Lheq;->c(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lheq;->f(Ljava/lang/String;)V

    .line 493
    new-instance v0, Lhef;

    iget-object v1, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {v0, v1}, Lhef;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhef;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 463
    :catch_0
    move-exception v2

    .line 464
    const-string v6, "ERROR_FORMAT_DATE"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v6, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 482
    :cond_14
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v0

    invoke-virtual {v0}, Lhdi;->g()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 483
    invoke-static {v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v3

    invoke-virtual {v3}, Lhdi;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    invoke-virtual {v0}, Lftj;->a()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v2, v0}, Lheq;->d(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    iget-object v0, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v0

    invoke-virtual {v0}, Lhdi;->g()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lhea;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 485
    invoke-static {v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v3

    invoke-virtual {v3}, Lhdi;->a()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    invoke-virtual {v0}, Lftj;->d()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-virtual {v2, v0}, Lheq;->g(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
