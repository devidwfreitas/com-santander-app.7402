.class Lwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lwu;


# direct methods
.method constructor <init>(Lwu;I)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lwv;->b:Lwu;

    iput p2, p0, Lwv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v0, p0, Lwv;->b:Lwu;

    iget-object v2, v0, Lwu;->b:Landroid/content/Context;

    iget-object v0, p0, Lwv;->b:Lwu;

    invoke-static {v0}, Lwu;->a(Lwu;)Lacg;

    move-result-object v3

    iget-object v0, p0, Lwv;->b:Lwu;

    iget-object v0, v0, Lwu;->a:Ljava/util/List;

    iget v4, p0, Lwv;->a:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v1, v2, v3, v0}, Lzs;->a(Landroid/content/Context;Lacg;Lsy;)V

    .line 72
    return-void
.end method
