.class Luw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Luw;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 156
    if-eqz p2, :cond_0

    .line 157
    iget-object v0, p0, Luw;->a:Luo;

    .line 158
    invoke-virtual {v0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_radio_button_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luw;->a:Luo;

    .line 159
    invoke-virtual {v1}, Luo;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_recomendacao_parte_valor:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object v0, p0, Luw;->a:Luo;

    invoke-static {v0, p2}, Luo;->c(Luo;Z)V

    return-void
.end method
