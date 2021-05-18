.class Llwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llvz;


# direct methods
.method constructor <init>(Llvz;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Llwa;->a:Llvz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 280
    iget-object v0, p0, Llwa;->a:Llvz;

    iget-object v1, p0, Llwa;->a:Llvz;

    invoke-static {v1}, Llvz;->a(Llvz;)Z

    move-result v1

    invoke-static {v0, v1}, Llvz;->a(Llvz;Z)V

    .line 289
    iget-object v0, p0, Llwa;->a:Llvz;

    invoke-static {v0}, Llvz;->b(Llvz;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 290
    iget-object v0, p0, Llwa;->a:Llvz;

    invoke-static {v0}, Llvz;->c(Llvz;)Lkvp;

    move-result-object v0

    invoke-virtual {v0}, Lkvp;->c()Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v0, p0, Llwa;->a:Llvz;

    invoke-static {v0}, Llvz;->c(Llvz;)Lkvp;

    move-result-object v0

    invoke-virtual {v0}, Lkvp;->d()Ljava/lang/String;

    move-result-object v2

    .line 292
    iget-object v0, p0, Llwa;->a:Llvz;

    invoke-static {v0}, Llvz;->c(Llvz;)Lkvp;

    move-result-object v0

    invoke-virtual {v0}, Lkvp;->b()Ljava/lang/String;

    move-result-object v3

    .line 293
    iget-object v0, p0, Llwa;->a:Llvz;

    invoke-static {v0}, Llvz;->c(Llvz;)Lkvp;

    move-result-object v0

    invoke-virtual {v0}, Lkvp;->a()Ljava/lang/String;

    move-result-object v4

    .line 295
    iget-object v0, p0, Llwa;->a:Llvz;

    invoke-static {v0}, Llvz;->e(Llvz;)Lkya;

    move-result-object v0

    new-instance v5, Llwb;

    invoke-direct {v5, p0}, Llwb;-><init>(Llwa;)V

    new-instance v6, Llwc;

    invoke-direct {v6, p0}, Llwc;-><init>(Llwa;)V

    invoke-interface/range {v0 .. v6}, Lkya;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkxl;Lkxl;)V

    .line 318
    return-void
.end method
