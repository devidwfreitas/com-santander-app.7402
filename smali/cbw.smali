.class public Lcbw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/DeviceShareButton;


# direct methods
.method public constructor <init>(Lcom/facebook/share/widget/DeviceShareButton;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcbw;->a:Lcom/facebook/share/widget/DeviceShareButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcbw;->a:Lcom/facebook/share/widget/DeviceShareButton;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->a(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcbw;->a:Lcom/facebook/share/widget/DeviceShareButton;

    invoke-static {v0}, Lcom/facebook/share/widget/DeviceShareButton;->a(Lcom/facebook/share/widget/DeviceShareButton;)Lbvv;

    move-result-object v0

    iget-object v1, p0, Lcbw;->a:Lcom/facebook/share/widget/DeviceShareButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/DeviceShareButton;->g()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbvv;->b(Ljava/lang/Object;)V

    .line 170
    return-void
.end method
