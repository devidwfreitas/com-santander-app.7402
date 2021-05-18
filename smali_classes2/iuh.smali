.class public Liuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;I)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Liuh;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    iput p2, p0, Liuh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Liuh;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c(Lcom/santander/app/homenaologada/presentation/HomeActivity;)I

    move-result v0

    iget v1, p0, Liuh;->a:I

    if-ne v0, v1, :cond_0

    .line 310
    const-string v0, "Login_Acao"

    const-string v1, "GirarCarrosselHomeNaoLogada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Liuh;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Lcom/santander/app/homenaologada/presentation/HomeActivity;I)I

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Liuh;->b:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->d(Lcom/santander/app/homenaologada/presentation/HomeActivity;)I

    goto :goto_0
.end method
