.class Lrj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lre;


# direct methods
.method constructor <init>(Lre;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lrj;->a:Lre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lrj;->a:Lre;

    invoke-static {v0}, Lre;->e(Lre;)Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->app_investimento_sem_saldo_disponível:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laaz;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 226
    return-void
.end method
