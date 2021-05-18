.class public Lccl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxo;


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/LikeView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lccl;->a:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/share/widget/LikeView;Lcch;)V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lccl;-><init>(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccl;->b:Z

    .line 830
    return-void
.end method

.method public a(Lbww;Lbhp;)V
    .locals 2

    .prologue
    .line 836
    iget-boolean v0, p0, Lccl;->b:Z

    if-eqz v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 840
    :cond_0
    if-eqz p1, :cond_2

    .line 841
    invoke-virtual {p1}, Lbww;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    new-instance p2, Lbhp;

    const-string v0, "Cannot use LikeView. The device may not be supported."

    invoke-direct {p2, v0}, Lbhp;-><init>(Ljava/lang/String;)V

    .line 848
    :cond_1
    iget-object v0, p0, Lccl;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/LikeView;->a(Lcom/facebook/share/widget/LikeView;Lbww;)V

    .line 849
    iget-object v0, p0, Lccl;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->c(Lcom/facebook/share/widget/LikeView;)V

    .line 852
    :cond_2
    if-eqz p2, :cond_3

    .line 853
    iget-object v0, p0, Lccl;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->d(Lcom/facebook/share/widget/LikeView;)Lcco;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 854
    iget-object v0, p0, Lccl;->a:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->d(Lcom/facebook/share/widget/LikeView;)Lcco;

    move-result-object v0

    invoke-interface {v0, p2}, Lcco;->a(Lbhp;)V

    .line 858
    :cond_3
    iget-object v0, p0, Lccl;->a:Lcom/facebook/share/widget/LikeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/widget/LikeView;->a(Lcom/facebook/share/widget/LikeView;Lccl;)Lccl;

    goto :goto_0
.end method
