.class Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    iget-object v0, v0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    iget-object v0, v0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-interface {v0, v1, p2}, Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)Z

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
