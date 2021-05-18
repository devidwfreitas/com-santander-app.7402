.class public Lalg;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lalg;->a:Ljava/lang/Boolean;

    iput-object p2, p0, Lalg;->b:Ljava/lang/String;

    iput-object p3, p0, Lalg;->c:Ljava/lang/String;

    iput-object p4, p0, Lalg;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lalg;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lalg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lalg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lalg;->d:Ljava/util/Map;

    return-object v0
.end method
