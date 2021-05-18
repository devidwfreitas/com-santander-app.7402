.class public Llsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Llsd;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Llsd;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->h(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    move-result-object v0

    iget-object v1, p0, Llsd;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 651
    return-void
.end method
