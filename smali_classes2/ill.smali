.class Lill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lilk;


# direct methods
.method constructor <init>(Lilk;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lill;->a:Lilk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lill;->a:Lilk;

    invoke-static {v0}, Lilk;->a(Lilk;)V

    .line 61
    iget-object v0, p0, Lill;->a:Lilk;

    invoke-static {v0}, Lilk;->b(Lilk;)Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/PoupancaAplicacaoConfirmacaoActivity;->a(IZ)V

    .line 62
    return-void
.end method
