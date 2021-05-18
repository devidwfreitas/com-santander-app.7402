.class Lleb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llea;


# direct methods
.method constructor <init>(Llea;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lleb;->a:Llea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lleb;->a:Llea;

    iget-object v0, v0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V

    .line 310
    return-void
.end method
