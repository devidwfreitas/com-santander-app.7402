.class Llei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lleh;


# direct methods
.method constructor <init>(Lleh;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Llei;->a:Lleh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Llei;->a:Lleh;

    iget-object v0, v0, Lleh;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)V

    .line 121
    return-void
.end method
