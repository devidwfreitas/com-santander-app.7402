.class public Llhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkud;

.field final synthetic b:I

.field final synthetic c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;I)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Llhj;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput-object p2, p0, Llhj;->a:Lkud;

    iput p3, p0, Llhj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Llhj;->c:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iget-object v1, p0, Llhj;->a:Lkud;

    iget v2, p0, Llhj;->b:I

    invoke-static {v0, v1, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;I)V

    .line 548
    return-void
.end method
