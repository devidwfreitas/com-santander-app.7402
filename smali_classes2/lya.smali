.class Llya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llxx;


# direct methods
.method constructor <init>(Llxx;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Llya;->a:Llxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Llya;->a:Llxx;

    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->a(Llxx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llxx;->a(Llxx;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object v0, p0, Llya;->a:Llxx;

    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->b(Llxx;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llxx;->a(Llxx;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    iget-object v0, p0, Llya;->a:Llxx;

    invoke-static {v0}, Llxx;->c(Llxx;)Llyd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llya;->a:Llxx;

    invoke-static {v0}, Llxx;->d(Llxx;)Llye;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llya;->a:Llxx;

    invoke-static {v0}, Llxx;->e(Llxx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Llyb;->a:[I

    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->d(Llxx;)Llye;

    move-result-object v1

    invoke-virtual {v1}, Llye;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const-string v0, "Seguros_Sinistro_Acionar_EquipamentoDanificado_PopUp_Equipamento_Acao"

    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->f(Llxx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "Seguros_Sinistro_Acionar_EquipamentoDanificado_PopUp_Valor_Acao"

    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->b(Llxx;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lkux;

    invoke-direct {v0}, Lkux;-><init>()V

    .line 183
    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->f(Llxx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkux;->a(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->b(Llxx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkux;->d(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->c(Llxx;)Llyd;

    move-result-object v1

    invoke-interface {v1, v0}, Llyd;->a(Lkux;)V

    .line 186
    iget-object v0, p0, Llya;->a:Llxx;

    invoke-virtual {v0}, Llxx;->dismiss()V

    goto :goto_0

    .line 190
    :pswitch_1
    new-instance v0, Lkux;

    invoke-direct {v0}, Lkux;-><init>()V

    .line 191
    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->f(Llxx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkux;->a(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->b(Llxx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkux;->d(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Llya;->a:Llxx;

    invoke-static {v1}, Llxx;->c(Llxx;)Llyd;

    move-result-object v1

    iget-object v2, p0, Llya;->a:Llxx;

    invoke-static {v2}, Llxx;->g(Llxx;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Llyd;->a(Lkux;I)V

    .line 194
    iget-object v0, p0, Llya;->a:Llxx;

    invoke-virtual {v0}, Llxx;->dismiss()V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
