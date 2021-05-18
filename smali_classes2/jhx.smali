.class Ljhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljic;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljhw;


# direct methods
.method constructor <init>(Ljhw;Ljic;II)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Ljhx;->d:Ljhw;

    iput-object p2, p0, Ljhx;->a:Ljic;

    iput p3, p0, Ljhx;->b:I

    iput p4, p0, Ljhx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 126
    const-string v0, "Investimentos_Fundos_Aplicar_Acao"

    const-string v1, "AplicarFundo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "Investimentos_Fundos_Aplicar"

    iget-object v1, p0, Ljhx;->a:Ljic;

    invoke-static {v1}, Ljic;->a(Ljic;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Ljhx;->d:Ljhw;

    invoke-static {v0}, Ljhw;->a(Ljhw;)Ljie;

    move-result-object v1

    iget-object v0, p0, Ljhx;->d:Ljhw;

    iget v2, p0, Ljhx;->b:I

    iget v3, p0, Ljhx;->c:I

    invoke-virtual {v0, v2, v3}, Ljhw;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    invoke-interface {v1, v0}, Ljie;->a(Ljdx;)V

    .line 130
    const-string v0, "onChildClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljhx;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljhx;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
