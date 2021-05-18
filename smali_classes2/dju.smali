.class Ldju;
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

    iput-object p1, p0, Ldju;->c:Ldjs;

    iput-object p2, p0, Ldju;->a:Ljava/lang/String;

    iput-wide p3, p0, Ldju;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ldju;->c:Ldjs;

    iget-object v1, p0, Ldju;->a:Ljava/lang/String;

    iget-wide v2, p0, Ldju;->b:J

    invoke-static {v0, v1, v2, v3}, Ldjs;->b(Ldjs;Ljava/lang/String;J)V

    return-void
.end method
