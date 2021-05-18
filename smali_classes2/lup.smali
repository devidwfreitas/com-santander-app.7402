.class Llup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmbu;


# instance fields
.field final synthetic a:Llur;

.field final synthetic b:Lluh;


# direct methods
.method constructor <init>(Lluh;Llur;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Llup;->b:Lluh;

    iput-object p2, p0, Llup;->a:Llur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Llup;->b:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llup;->b:Lluh;

    invoke-static {v0}, Lluh;->d(Lluh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Llup;->b:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    iget-object v1, p0, Llup;->a:Llur;

    invoke-virtual {v1}, Llur;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Llup;->a:Llur;

    invoke-static {v2}, Llur;->p(Llur;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Llus;->a(IF)V

    .line 245
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method
