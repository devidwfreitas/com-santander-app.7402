.class public Lljk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lljk;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lljk;->a:Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->onBackPressed()V

    .line 141
    return-void
.end method
