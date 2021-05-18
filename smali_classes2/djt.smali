.class Ldjt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ldjs;


# direct methods
.method constructor <init>(Ldjs;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Ldjt;->c:Ldjs;

    iput-object p2, p0, Ldjt;->a:Ljava/lang/String;

    iput-wide p3, p0, Ldjt;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldjt;->c:Ldjs;

    iget-object v1, p0, Ldjt;->a:Ljava/lang/String;

    iget-wide v2, p0, Ldjt;->b:J

    invoke-static {v0, v1, v2, v3}, Ldjs;->a(Ldjs;Ljava/lang/String;J)V

    return-void
.end method
