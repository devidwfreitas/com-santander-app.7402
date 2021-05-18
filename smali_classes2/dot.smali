.class public Ldot;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcsp;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldot;->a:Ljava/lang/String;

    iput-object p2, p0, Ldot;->b:Ljava/lang/String;

    iput-object p3, p0, Ldot;->c:Ljava/lang/String;

    iput-wide p4, p0, Ldot;->d:J

    iput-object p6, p0, Ldot;->e:Ljava/lang/Object;

    return-void
.end method
