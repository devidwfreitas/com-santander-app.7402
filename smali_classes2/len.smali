.class public Llen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Llen;->a:Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Llen;->a:Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->onBackPressed()V

    .line 105
    return-void
.end method
