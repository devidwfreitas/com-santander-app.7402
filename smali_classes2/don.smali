.class Ldon;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldok;


# direct methods
.method constructor <init>(Ldok;J)V
    .locals 0

    iput-object p1, p0, Ldon;->b:Ldok;

    iput-wide p2, p0, Ldon;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldon;->b:Ldok;

    iget-wide v2, p0, Ldon;->a:J

    invoke-static {v0, v2, v3}, Ldok;->a(Ldok;J)V

    return-void
.end method
