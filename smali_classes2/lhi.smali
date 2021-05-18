.class public Llhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Llhi;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Llhi;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)I

    .line 431
    iget-object v0, p0, Llhi;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)V

    .line 432
    return-void
.end method
