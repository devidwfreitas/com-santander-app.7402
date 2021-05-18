.class Ldoi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldoh;


# direct methods
.method constructor <init>(Ldoh;)V
    .locals 0

    iput-object p1, p0, Ldoi;->a:Ldoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldoi;->a:Ldoh;

    iget-object v0, v0, Ldoh;->d:Ldog;

    invoke-static {v0}, Ldog;->a(Ldog;)Ldoj;

    move-result-object v0

    iget-object v1, p0, Ldoi;->a:Ldoh;

    iget v1, v1, Ldoh;->b:I

    invoke-interface {v0, v1}, Ldoj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldoi;->a:Ldoh;

    iget-object v0, v0, Ldoh;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->d()Ldka;

    move-result-object v0

    invoke-virtual {v0}, Ldka;->V()Z

    iget-object v0, p0, Ldoi;->a:Ldoh;

    iget-object v0, v0, Ldoh;->c:Ldkw;

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
