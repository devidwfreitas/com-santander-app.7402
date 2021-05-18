.class public Lccu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/share/widget/ShareButtonBase;


# direct methods
.method public constructor <init>(Lcom/facebook/share/widget/ShareButtonBase;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lccu;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lccu;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->a(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lccu;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {v0}, Lcom/facebook/share/widget/ShareButtonBase;->g()Lbny;

    move-result-object v0

    iget-object v1, p0, Lccu;->a:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareButtonBase;->h()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbny;->b(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
