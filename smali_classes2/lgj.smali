.class public Llgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Llgj;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Llgj;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->b(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Llgj;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 152
    return-void
.end method
