.class Llkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Llka;


# direct methods
.method constructor <init>(Llka;I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Llkb;->b:Llka;

    iput p2, p0, Llkb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Llkb;->b:Llka;

    invoke-static {v0}, Llka;->a(Llka;)Llkd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Llkb;->b:Llka;

    invoke-static {v0}, Llka;->a(Llka;)Llkd;

    move-result-object v1

    iget-object v0, p0, Llkb;->b:Llka;

    invoke-static {v0}, Llka;->b(Llka;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Llkb;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqe;

    invoke-virtual {v0}, Lkqe;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llkb;->b:Llka;

    invoke-static {v0}, Llka;->b(Llka;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Llkb;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqe;

    invoke-virtual {v0}, Lkqe;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Llkd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
