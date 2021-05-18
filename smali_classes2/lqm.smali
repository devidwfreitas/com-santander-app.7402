.class public Llqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Llqm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    new-instance v1, Lkxi;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkxi;-><init>(Z)V

    invoke-virtual {v0, v1}, Lnfg;->a(Ljava/lang/Object;)V

    .line 142
    return-void
.end method
