.class public Lbtk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lbsp;
    .locals 2

    .prologue
    .line 795
    invoke-static {}, Lbsp;->c()Lbsp;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->i()Lbrn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsp;->a(Lbrn;)Lbsp;

    .line 797
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->k()Lbse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsp;->a(Lbse;)Lbsp;

    .line 798
    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 761
    invoke-virtual {p0}, Lbtk;->a()Lbsp;

    move-result-object v1

    .line 762
    iget-object v0, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/login/widget/LoginButton;->g(Lcom/facebook/login/widget/LoginButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lbjx;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 766
    iget-object v0, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbjx;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 769
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Profile;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 771
    iget-object v4, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 772
    invoke-virtual {v4}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbjx;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 774
    invoke-virtual {v0}, Lcom/facebook/Profile;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 771
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 779
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 781
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lbtl;

    invoke-direct {v5, p0, v1}, Lbtl;-><init>(Lbtk;Lbsp;)V

    .line 782
    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 787
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 792
    :goto_1
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lbjx;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {v1}, Lbsp;->f()V

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 728
    invoke-virtual {p0}, Lbtk;->a()Lbsp;

    move-result-object v0

    .line 729
    sget-object v1, Lbpv;->PUBLISH:Lbpv;

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->a(Lbtj;)Lbpv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbpv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 732
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 733
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->b(Lbtj;)Ljava/util/List;

    move-result-object v2

    .line 731
    invoke-virtual {v0, v1, v2}, Lbsp;->b(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V

    .line 758
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->c()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 736
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->c()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 737
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->b(Lbtj;)Ljava/util/List;

    move-result-object v2

    .line 735
    invoke-virtual {v0, v1, v2}, Lbsp;->b(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 740
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->e(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 741
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->b(Lbtj;)Ljava/util/List;

    move-result-object v2

    .line 739
    invoke-virtual {v0, v1, v2}, Lbsp;->b(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 746
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 747
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->b(Lbtj;)Ljava/util/List;

    move-result-object v2

    .line 745
    invoke-virtual {v0, v1, v2}, Lbsp;->a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 748
    :cond_3
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->c()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 749
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 750
    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->c()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 751
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->b(Lbtj;)Ljava/util/List;

    move-result-object v2

    .line 749
    invoke-virtual {v0, v1, v2}, Lbsp;->a(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 753
    :cond_4
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 754
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->f(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    .line 755
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lbtj;

    move-result-object v2

    invoke-static {v2}, Lbtj;->b(Lbtj;)Ljava/util/List;

    move-result-object v2

    .line 753
    invoke-virtual {v0, v1, v2}, Lbsp;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 709
    iget-object v0, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    .line 711
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_0

    .line 714
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbtk;->a(Landroid/content/Context;)V

    .line 719
    :goto_0
    iget-object v1, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v1

    .line 721
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 722
    const-string v3, "logging_in"

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    iget-object v0, p0, Lbtk;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/login/widget/LoginButton;->c(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 725
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lbtk;->b()V

    goto :goto_0

    .line 722
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
