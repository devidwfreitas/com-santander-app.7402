.class public final Lnkg;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnkg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lnhp;

.field private final c:Lnjz;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private volatile g:Lngm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnkg;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lnkj;Lnhp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnkj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnkg;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lnkj;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnkg;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lnkj;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnkg;->f:Ljava/lang/String;

    new-instance v0, Lnjz;

    invoke-direct {v0, p1}, Lnjz;-><init>(Lnkj;)V

    iput-object v0, p0, Lnkg;->c:Lnjz;

    iput-object p2, p0, Lnkg;->b:Lnhp;

    iget-object v0, p0, Lnkg;->c:Lnjz;

    invoke-virtual {v0}, Lnjz;->d()Lnji;

    move-result-object v0

    invoke-interface {p2, v0}, Lnhp;->a(Ljava/util/EventListener;)V

    invoke-direct {p0}, Lnkg;->g()Lngk;

    move-result-object v0

    invoke-interface {p2, v0}, Lnhp;->a(Ljava/util/EventListener;)V

    return-void
.end method

.method static synthetic a(Lnkg;Lngm;)Lngm;
    .locals 0

    iput-object p1, p0, Lnkg;->g:Lngm;

    return-object p1
.end method

.method static synthetic a(Lnkg;)Lnhp;
    .locals 1

    iget-object v0, p0, Lnkg;->b:Lnhp;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lnkj;)Lnkg;
    .locals 6

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key and config must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lnkj;->a(Lnkj;)Lnkj;

    move-result-object v1

    invoke-virtual {v1}, Lnkj;->o()Lnhc;

    move-result-object v0

    invoke-static {v0}, Lnku;->a(Lnhc;)Lnhp;

    move-result-object v2

    invoke-virtual {v1}, Lnkj;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-interface {v2, v0}, Lnhp;->a(Ljava/util/EventListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lnkg;

    invoke-direct {v0, v1, v2}, Lnkg;-><init>(Lnkj;Lnhp;)V

    sget-object v2, Lnkg;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lnkg;->b:Lnhp;

    new-instance v3, Lnkm;

    iget-object v4, v0, Lnkg;->b:Lnhp;

    invoke-direct {v3, v1, v4}, Lnkm;-><init>(Lnkj;Lnhp;)V

    invoke-interface {v2, v3}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v2, v0, Lnkg;->b:Lnhp;

    new-instance v3, Lnkq;

    iget-object v4, v0, Lnkg;->b:Lnhp;

    iget-object v5, v0, Lnkg;->c:Lnjz;

    invoke-direct {v3, v1, v4, v5}, Lnkq;-><init>(Lnkj;Lnhp;Lnjz;)V

    invoke-interface {v2, v3}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v2, v0, Lnkg;->b:Lnhp;

    invoke-direct {v0, p0, v1}, Lnkg;->b(Ljava/lang/String;Lnkj;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v2, v1}, Lnhp;->b(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private a(Lnil;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnkg;->b:Lnhp;

    new-instance v1, Lnic;

    invoke-direct {v1, p1}, Lnic;-><init>(Lnil;)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    iget-object v0, p0, Lnkg;->b:Lnhp;

    new-instance v1, Lnhy;

    invoke-direct {v1, p1}, Lnhy;-><init>(Lnil;)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lnkj;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lnki;

    invoke-direct {v0, p0, p2, p1}, Lnki;-><init>(Lnkg;Lnkj;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lnkg;)Lnjz;
    .locals 1

    iget-object v0, p0, Lnkg;->c:Lnjz;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lnkg;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnkg;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnkg;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lnkg;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnkg;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnkg;->b:Lnhp;

    new-instance v2, Lnhw;

    invoke-direct {v2, v0}, Lnhw;-><init>(Lnkg;)V

    invoke-interface {v1, v2}, Lnhp;->b(Lnib;)V

    goto :goto_0
.end method

.method private g()Lngk;
    .locals 1

    new-instance v0, Lnkh;

    invoke-direct {v0, p0}, Lnkh;-><init>(Lnkg;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnkg;->b:Lnhp;

    new-instance v1, Lnif;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lnif;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lnil;

    invoke-direct {v0, p3}, Lnil;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Lnkb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "link_id"

    invoke-virtual {v0, v2, p2}, Lnil;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_name"

    invoke-virtual {v0, v2, p2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tealium_event"

    invoke-virtual {v0, v2, p2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "view"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "call_type"

    const-string v3, "view"

    invoke-virtual {v0, v2, v3}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "tealium_event_type"

    invoke-virtual {v0, v2, v1}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnkg;->a(Lnil;)V

    return-void

    :cond_1
    const-string v2, "call_type"

    const-string v3, "link"

    invoke-virtual {v0, v2, v3}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lnil;

    invoke-direct {v0, p2}, Lnil;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "screen_title"

    invoke-virtual {v0, v1, p1}, Lnil;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "page_type"

    const-string v2, "mobile_view"

    invoke-virtual {v0, v1, v2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "call_type"

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tealium_event_type"

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnkg;->a(Lnil;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz p1, :cond_1

    const-string v0, "timestamp_unix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v0, Lnil;

    invoke-direct {v0, p1}, Lnil;-><init>(Ljava/util/Map;)V

    :goto_1
    invoke-direct {p0, v0}, Lnkg;->a(Lnil;)V

    return-void

    :catch_0
    move-exception v0

    move-wide v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Lnil;

    invoke-direct {v0, v2, v3}, Lnil;-><init>(J)V

    invoke-virtual {v0, p1}, Lnil;->a(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method

.method public a(Lnjq;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnkg;->b:Lnhp;

    new-instance v1, Lnhs;

    invoke-direct {v1, p1}, Lnhs;-><init>(Lnjq;)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lnil;

    invoke-direct {v0, p2}, Lnil;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "link_id"

    invoke-virtual {v0, v1, p1}, Lnil;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_name"

    invoke-virtual {v0, v1, p1}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tealium_event"

    invoke-virtual {v0, v1, p1}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "call_type"

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tealium_event_type"

    const-string v2, "activity"

    invoke-virtual {v0, v1, v2}, Lnil;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnkg;->a(Lnil;)V

    return-void
.end method

.method public b(Lnjq;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnkg;->b:Lnhp;

    new-instance v1, Lnie;

    invoke-direct {v1, p1}, Lnie;-><init>(Lnjq;)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnkg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lnkg;->b:Lnhp;

    new-instance v1, Lnif;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnif;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    return-void
.end method

.method public e()Lnjz;
    .locals 1

    iget-object v0, p0, Lnkg;->c:Lnjz;

    return-object v0
.end method

.method public f()Lngm;
    .locals 1

    iget-object v0, p0, Lnkg;->g:Lngm;

    return-object v0
.end method
